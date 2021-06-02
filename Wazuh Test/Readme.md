# Wazuh Endpoint Test
Wazuh 3.13.x, integrated with Security Onion 2.3.x, tested against the defined test plan.  

## Detection Measurements
Dections are scored on a scale of 0 to 100.

| Score  | Measurement     | Color |
| ------ |:---------------:| -----:|
| 0      | No Alert or Log | ![#ff6666](https://via.placeholder.com/15/ff6666/000000?text=+) `Red  ` |
| 50     | Log and No Alert| ![#ffe766](https://via.placeholder.com/15/ffe766/000000?text=+) `Amber` |
| 100    | Log and Alert   | ![#8ec843](https://via.placeholder.com/15/8ec843/000000?text=+) `Green` |

**Note:** For techniques with multiple tests, the final technique score will the sum of the scores for each test divided by the number of tests.
**Example:** Test 1 = 50 and Test 2 = 0 `(50+0)/2 = 25`

## Wazuh Endpoint Test: User Account
The Wazuh detection score is 61.36% under user priviledges.
![Alt text](./User_Account/Wazuh_Endpoint_Test_User_Account.svg)

## Wazuh Endpoint Test: User Account with Detection Engineering

![Alt text](./User_Account_Detections/Wazuh_Endpoint_Test_User_Account_with_Detections.svg)