awareobject DeliveryPackage {
  category MOBILEOBJECT
  contextfeatures {
    contextfeature LocationChange {
      relevance High
      rule NotifyCustomer
    }
  }
  notifications {
    notification PushNotification {
      title "Your package is nearby!"
      body "Your delivery is approaching."
    }
  }
  platform ALL
}