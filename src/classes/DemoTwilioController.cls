public class DemoTwilioController {

    public PageReference sendSMS() {
    TwilioRestClient client = new TwilioRestClient(account, token);

        Map<String,String> params = new Map<String,String> {
                'To'   => '+12042278348',
                'From' => '+12048171117',
                'Body' => 'Hello there!'
            };
        TwilioSMS sms = client.getAccount().getSMSMessages().create(params);
        return null;
    }

    public string account = 'AC6f21b53bd55f8705ddeeb8f03b0cca6f';
    public string token = '0a10e13c0d5db0173f7d413b0ee9d7e5';
}