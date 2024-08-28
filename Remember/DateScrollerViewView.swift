//
//  DateScrollerViewView.swift
//  Remember
//
//  Created by Carl Helin on 26/07/2022.
//

import SwiftUI

struct DateScrollerViewView: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    var body: some View {
        HStack {
            Spacer()
            Button(action: previousMonth) {
                Image(systemName: "arrow.left")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Text(CalendarHelper().monthYearString(dateHolder.date))
                .font(.title)
                .bold()
                .animation(.none)
                .frame(maxWidth: .infinity)
            Button(action: nextMonth) {
                Image(systemName: "arrow.right")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Spacer()
        }
    }
    
    func previousMonth() {
        dateHolder.date = CalendarHelper().minusMonth(dateHolder.date)
    }
    
    func nextMonth() {
        dateHolder.date = CalendarHelper().plusMonth(dateHolder.date)
    }
}

struct DateScrollerViewView_Previews: PreviewProvider {
    static var previews: some View {
        let dateHolder = DateHolder()
        DateScrollerViewView()
            .environmentObject(dateHolder)
    }
}
