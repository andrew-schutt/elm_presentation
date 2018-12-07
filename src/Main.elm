module Main exposing (Msg(..), main, update)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = Increment
    | Decrement
    | Double
    | SquareRoot


update : Msg -> Int -> Int
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Double ->
            model * 2

        SquareRoot ->
            sqrt model


view : Int -> Html Msg
view model =
    div []
        [ button [ onClick SquareRoot ] [ text "sqrt" ]
        , button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        , button [ onClick Double ] [ text "*2" ]
        ]
