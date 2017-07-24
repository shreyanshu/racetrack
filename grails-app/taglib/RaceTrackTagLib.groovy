class RaceTrackTagLib
{
    def formatDate = { attrs ->
        def date = attrs.get('date')

        if (!date) {
            date = new Date()
        }

        def format = attrs.get('format')
        if (!format){
            format = "yyyy-MM-dd HH:mm:ss z"
        }

        out << new java.text.SimpleDateFormat(format).format(date)
    }

    def formatNumber = { attrs ->
        def number = attrs.get('number')

        if (!number) {
            number = new Double(0)
        }

        def format = attrs.get('format')
        if (!format) {
            format = "0"
        }

        out << new java.text.DecimalFormat(format) .format((Double)number)
    }
}