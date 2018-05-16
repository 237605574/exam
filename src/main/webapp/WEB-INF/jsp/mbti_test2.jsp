<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html >

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>MBTI | Part 1 | Page 1</title>
<link href="/css/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/paging.js"></script>
</head>

<body>
	<div class=page>

		<div class=headertop>
			<div class=headertopwrapper></div>
		</div>
		<div class=headerbottom>
			<div class=headerbottomwrapper>
				<img src="/images/name.png" width="608" height="117" alt="OWIR"><img
					src="/images/DSC_4221.jpg" width="352" height="117" alt="Sameer">
			</div>
		</div>
		<div class=wrapper>
			<div class=contentwrapper id="contentwrapper">

				<p>
				<h1>MBTI Survey - Courtesy Office of Workforce Innovation and
					Research</h1>
				</p>
				<!--<form action="" method="post" enctype="application/x-www-form-urlencoded"> -->
				<fieldset>
					<legend>MBTI Survey </legend>
					<!--<p><h2>Which answer comes closest to describing how you usually feel or act?</h2></p> -->
					<div>
						<p id="data"></p>
					</div>

					<table id="results">
						<tr>
							<th id="th1"></th>
							<th id="th2">
								<h2>Which answer comes closest to describing how you usually feel or act?</h2>
							</th>
						</tr>

						<tr>
							<td>1</td>
							<td>
								<p>
									When you go somewhere for the day, would you rather <br> <input
										type="radio" value="J" name="Question_1"
										onclick="readValue(this.value)">plan what you will do
									and when, or <br> <input type="radio" value="P"
										name="Question_1" onclick="readValue(this.value)">just
									go?
								</p>
							</td>
						</tr>


						<tr>
							<td>2</td>
							<td>
								<p>
									Do you consider yourself to be <br> <input type="radio"
										value="P" name="Question_2" onclick="readValue(this.value)">
									more of a spontaneous person, or <br> <input type="radio"
										value="J" name="Question_2" onclick="readValue(this.value)">
									more of an organized person?
								</p>
							</td>
						</tr>

						<tr>
							<td>3</td>
							<td>
								<p>
									If you were a teacher, would you rather teach <br> <input
										type="radio" value="S" name="Question_3"
										onclick="readValue(this.value)"> fact courses, or <br>
									<input type="radio" value="N" name="Question_3"
										onclick="readValue(this.value)"> courses involving
									theory?
								</p>
							</td>
						</tr>

						<tr>
							<td>4</td>
							<td>
								<p>
									Are you usually <br> <input type="radio" value="E"
										name="Question_4" onclick="readValue(this.value)"> a
									good mixer, or <br> <input type="radio" value="I"
										name="Question_4" onclick="readValue(this.value)">
									rather quiet and reserved?
								</p>
							</td>
						</tr>

						<tr>
							<td>5</td>
							<td>
								<p>
									Do you usually get along better with <br> <input
										type="radio" value="N" name="Question_5"
										onclick="readValue(this.value)"> imaginative people,
									or <br> <input type="radio" value="S" name="Question_5"
										onclick="readValue(this.value)"> realistic people?
								</p>
							</td>
						</tr>

						<tr>
							<td>6</td>
							<td>
								<p>
									Do you more often let <br> <input type="radio" value="F"
										name="Question_6" onclick="readValue(this.value)">
									your heart rule your head, or <br> <input type="radio"
										value="T" name="Question_6" onclick="readValue(this.value)">
									your head rule your heart?
								</p>
							</td>
						</tr>

						<tr>
							<td>7</td>
							<td>
								<p>
									Do you prefer to do many things <br> <input type="radio"
										value="P" name="Question_7" onclick="readValue(this.value)">
									on the spur of the moment, or <br> <input type="radio"
										value="J" name="Question_7" onclick="readValue(this.value)">
									according to your plans?
								</p>
							</td>
						</tr>

						<tr>
							<td>8</td>
							<td>
								<p>
									Are you <br> <input type="radio" value="E"
										name="Question_8" onclick="readValue(this.value)">
									easy to get to know, or <br> <input type="radio" value="I"
										name="Question_8" onclick="readValue(this.value)">
									hard to get to know?
								</p>
							</td>
						</tr>

						<tr>
							<td>9</td>
							<td>
								<p>
									Does following a schedule <br> <input type="radio"
										value="J" name="Question_9" onclick="readValue(this.value)">
									appeal to you, or <br> <input type="radio" value="P"
										name="Question_9" onclick="readValue(this.value)">
									cramp you?
								</p>
							</td>
						</tr>

						<tr>
							<td>10</td>
							<td>
								<p>
									When you have a special job to do, do you like to <br> <input
										type="radio" value="J" name="Question_10"
										onclick="readValue(this.value)"> organize it carefully
									before you start, or <br> <input type="radio" value="P"
										name="Question_10" onclick="readValue(this.value)">
									find out what is necessary as you go along?
								</p>
							</td>
						</tr>

						<tr>
							<td>11</td>
							<td>
								<p>
									In most instances, do you prefer to <br> <input
										type="radio" value="P" name="Question_11"
										onclick="readValue(this.value)"> go with the flow, or
									<br> <input type="radio" value="J" name="Question_11"
										onclick="readValue(this.value)"> follow a schedule?
								</p>
							</td>
						</tr>

						<tr>
							<td>12</td>
							<td>
								<p>
									Would most people say you are <br> <input type="radio"
										value="I" name="Question_12" onclick="readValue(this.value)">
									a private person, or <br> <input type="radio" value="E"
										name="Question_12" onclick="readValue(this.value)"> a
									very open person?
								</p>
							</td>
						</tr>

						<tr>
							<td>13</td>
							<td>
								<p>
									Would you rather be considered <br> <input type="radio"
										value="S" name="Question_13" onclick="readValue(this.value)">
									a practical person, or <br> <input type="radio" value="N"
										name="Question_13" onclick="readValue(this.value)"> an
									ingenious person?
								</p>
							</td>
						</tr>

						<tr>
							<td>14</td>
							<td>
								<p>
									In a large group do you more often <br> <input
										type="radio" value="E" name="Question_14"
										onclick="readValue(this.value)"> introduce others, or
									<br> <input type="radio" value="I" name="Question_14"
										onclick="readValue(this.value)"> get introduced?
								</p>
							</td>
						</tr>

						<tr>
							<td>15</td>
							<td>
								<p>
									Would you rather have as a friend someone who <br> <input
										type="radio" value="S" name="Question_15"
										onclick="readValue(this.value)"> is always coming up
									with new ideas, or <br> <input type="radio" value="N"
										name="Question_15" onclick="readValue(this.value)">
									has both feet on the ground?
								</p>
							</td>
						</tr>

						<tr>
							<td>16</td>
							<td>
								<p>
									Are you inclined to <br> <input type="radio" value="F"
										name="Question_16" onclick="readValue(this.value)">
									value sentiment more than logic, or <br> <input
										type="radio" value="T" name="Question_16"
										onclick="readValue(this.value)"> value logic more than
									sentiment?
								</p>
							</td>
						</tr>

						<tr>
							<td>17</td>
							<td>
								<p>
									Do you prefer to <br> <input type="radio" value="P"
										name="Question_17" onclick="readValue(this.value)">
									wait and see what happens and then make plans, or <br> <input
										type="radio" value="J" name="Question_17"
										onclick="readValue(this.value)"> plan things far in
									advance?
								</p>
							</td>
						</tr>

						<tr>
							<td>18</td>
							<td>
								<p>
									Do you tend to spend a lot of time
									<br> <input type="radio" value="I" name="Question_18"
										onclick="readValue(this.value)"> by yourself, or
									<br> <input type="radio" value="E" name="Question_18"
										onclick="readValue(this.value)"> with others?
								</p>
							</td>
						</tr>

						<tr>
							<td>19</td>
							<td>
								<p>
									Do you find being around a lot of people <br> <input
										type="radio" value="E" name="Question_19"
										onclick="readValue(this.value)"> gives you more
									energy, or <br> <input type="radio" value="I"
										name="Question_19" onclick="readValue(this.value)"> is
									often "draining"?
								</p>
							</td>
						</tr>

						<tr>
							<td>20</td>
							<td>
								<p>
									Do you prefer to <br> <input type="radio" value="J"
										name="Question_20" onclick="readValue(this.value)">
									arrange dates, parties, etc., well in advance, or <br> <input
										type="radio" value="P" name="Question_20"
										onclick="readValue(this.value)"> be free to do
									whatever looks like fun when the time comes?
								</p>
							</td>
						</tr>

						<tr>
							<td>21</td>
							<td>
								<p>
									In planning a trip would you prefer to <br> <input
										type="radio" value="P" name="Question_21"
										onclick="readValue(this.value)"> most of the time do
									whatever you feel like that day, or <br> <input
										type="radio" value="J" name="Question_21"
										onclick="readValue(this.value)"> know ahead of time
									what you'll be doing most days?
								</p>
							</td>
						</tr>

						<tr>
							<td>22</td>
							<td>
								<p>
									At parties, do you <br> <input type="radio" value="I"
										name="Question_22" onclick="readValue(this.value)">
									sometimes get bored, or <br> <input type="radio" value="E"
										name="Question_22" onclick="readValue(this.value)">
									always have fun?
								</p>
							</td>
						</tr>

						<tr>
							<td>23</td>
							<td>
								<p>
									Do you usually <br> <input type="radio" value="E"
										name="Question_23" onclick="readValue(this.value)">
									mingle well with others, or <br> <input type="radio"
										value="I" name="Question_23" onclick="readValue(this.value)">
									tend to keep more to yourself?
								</p>
							</td>
						</tr>

						<tr>
							<td>24</td>
							<td>
								<p>
									Are you more attracted to <br> <input type="radio"
										value="N" name="Question_24" onclick="readValue(this.value)">
									a person with a quick and brilliant mind, or<br> <input
										type="radio" value="S" name="Question_24"
										onclick="readValue(this.value)"> a practical person
									with a lot of common sense?
								</p>
							</td>
						</tr>

						<tr>
							<td>25</td>
							<td>
								<p>
									In your daily work, do you <br> <input type="radio"
										value="P" name="Question_25" onclick="readValue(this.value)">
									rather enjoy an emergency that makes you work against time, or
									<br> <input type="radio" value="J" name="Question_25"
										onclick="readValue(this.value)"> usually plan your
									work so you won't need to work under pressure?
								</p>
							</td>
						</tr>

						<tr>
							<td>26</td>
							<td>
								<p>
									Would you sayit generally takes others <br> <input
										type="radio" value="I" name="Question_26"
										onclick="readValue(this.value)"> a lot of time to get
									to know you, or <br> <input type="radio" value="E"
										name="Question_26" onclick="readValue(this.value)"> a
									little time to get to know you?
								</p>
							</td>
						</tr>

						<tr>
							<td>27</td>
							<td>
								<p>
								<br> <input type="radio" value="I" name="Question_27"
								onclick="readValue(this.value)"> private <br> <input
								type="radio" value="E" name="Question_27"
								onclick="readValue(this.value)"> open
								</p>
							</td>
						</tr>

						<tr>
							<td>28</td>
							<td>
								<p>
									<input type="radio" value="J" name="Question_28"
										onclick="readValue(this.value)"> scheduled <br> <input
										type="radio" value="P" name="Question_28"
										onclick="readValue(this.value)"> unplanned
								</p>
							</td>
						</tr>

						<tr>
							<td>29</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_29"
										onclick="readValue(this.value)"> abstract <br> <input
										type="radio" value="S" name="Question_29"
										onclick="readValue(this.value)"> solid
								</p>
							</td>
						</tr>

						<tr>
							<td>30</td>
							<td><p>
									<input type="radio" value="F" name="Question_30"
										onclick="readValue(this.value)"> gentle <br> <input
										type="radio" value="T" name="Question_30"
										onclick="readValue(this.value)"> firm
								</p></td>
						</tr>

						<tr>
							<td>31</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_31"
										onclick="readValue(this.value)"> thinking <br> <input
										type="radio" value="F" name="Question_31"
										onclick="readValue(this.value)"> feeling
								</p>
							</td>
						</tr>

						<tr>
							<td>32</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_32"
										onclick="readValue(this.value)"> facts <br> <input
										type="radio" value="N" name="Question_32"
										onclick="readValue(this.value)"> ideas
								</p>
							</td>
						</tr>

						<tr>
							<td>33</td>
							<td>
								<p>
									<input type="radio" value="P" name="Question_33"
										onclick="readValue(this.value)"> impulse <br> <input
										type="radio" value="J" name="Question_33"
										onclick="readValue(this.value)"> decision
								</p>
							</td>
						</tr>

						<tr>
							<td>34</td>
							<td>
								<p>
									<input type="radio" value="E" name="Question_34"
										onclick="readValue(this.value)"> hearty <br> <input
										type="radio" value="I" name="Question_34"
										onclick="readValue(this.value)"> quiet
								</p>
							</td>
						</tr>

						<tr>
							<td>35</td>
							<td>
								<p>
									<input type="radio" value="I" name="Question_35"
										onclick="readValue(this.value)"> quiet <br> <input
										type="radio" value="E" name="Question_35"
										onclick="readValue(this.value)"> outgoing
								</p>
							</td>
						</tr>

						<tr>
							<td>36</td>
							<td>
								<p>
									<input type="radio" value="J" name="Question_36"
										onclick="readValue(this.value)"> systematic <br>
									<input type="radio" value="P" name="Question_36"
										onclick="readValue(this.value)"> casual
								</p>
							</td>
						</tr>

						<tr>
							<td>37</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_37"
										onclick="readValue(this.value)"> theory <br> <input
										type="radio" value="S" name="Question_37"
										onclick="readValue(this.value)"> certainty
								</p>
							</td>
						</tr>

						<tr>
							<td>38</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_38"
										onclick="readValue(this.value)"> sensitive <br> <input
										type="radio" value="T" name="Question_38"
										onclick="readValue(this.value)"> just
								</p>
							</td>
						</tr>
						<tr>
							<td>39</td>
							<td><input type="radio" value="T" name="Question_39"
								onclick="readValue(this.value)"> convincing <br> <input
								type="radio" value="F" name="Question_39"
								onclick="readValue(this.value)"> touching
								</p></td>
						</tr>
						<tr>
							<td>40</td>
							<td><input type="radio" value="S" name="Question_40"
								onclick="readValue(this.value)"> statement <br> <input
								type="radio" value="N" name="Question_40"
								onclick="readValue(this.value)"> concept
								</p></td>
						</tr>
						<tr>
							<td>41</td>
							<td>
								<p>
									<input type="radio" value="P" name="Question_41"
										onclick="readValue(this.value)"> unconstrained <br>
									<input type="radio" value="J" name="Question_41"
										onclick="readValue(this.value)"> scheduled
								</p>
							</td>
						</tr>
						<tr>
							<td>42</td>
							<td>
								<p>
									<input type="radio" value="I" name="Question_42"
										onclick="readValue(this.value)"> reserved <br> <input
										type="radio" value="E" name="Question_42"
										onclick="readValue(this.value)"> talkative
								</p>
							</td>
						</tr>
						<tr>
							<td>43</td>
							<td>
								<p>
									<input type="radio" value="J" name="Question_43"
										onclick="readValue(this.value)"> orderly <br> <input
										type="radio" value="P" name="Question_43"
										onclick="readValue(this.value)"> easygoing
								</p>
							</td>
						</tr>
						<tr>
							<td>44</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_44"
										onclick="readValue(this.value)"> idea <br> <input
										type="radio" value="S" name="Question_44"
										onclick="readValue(this.value)"> actuality
								</p>
							</td>
						</tr>
						<tr>
							<td>45</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_45"
										onclick="readValue(this.value)"> compassion <br>
									<input type="radio" value="T" name="Question_45"
										onclick="readValue(this.value)"> foresight
								</p>
							</td>
						</tr>
						<tr>
							<td>46</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_46"
										onclick="readValue(this.value)"> benefits <br> <input
										type="radio" value="F" name="Question_46"
										onclick="readValue(this.value)"> blessings
								</p>
							</td>
						</tr>
						<tr>
							<td>47</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_47"
										onclick="readValue(this.value)"> no-nonsense <br>
									<input type="radio" value="N" name="Question_47"
										onclick="readValue(this.value)"> theoretical
								</p>
							</td>
						</tr>

						<tr>
							<td>48</td>
							<td>
								<p>
									<input type="radio" value="I" name="Question_48"
										onclick="readValue(this.value)"> few friends <br>
									<input type="radio" value="E" name="Question_48"
										onclick="readValue(this.value)"> lots of friends
								</p>
							</td>
						</tr>

						<tr>
							<td>49</td>
							<td>
								<p>
									<input type="radio" value="J" name="Question_49"
										onclick="readValue(this.value)"> systematic <br>
									<input type="radio" value="P" name="Question_49"
										onclick="readValue(this.value)"> spontaneous
								</p>
							</td>
						</tr>

						<tr>
							<td>50</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_50"
										onclick="readValue(this.value)"> imaginative <br>
									<input type="radio" value="S" name="Question_50"
										onclick="readValue(this.value)"> matter-of-fact
								</p>
							</td>
						</tr>

						<tr>
							<td>51</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_51"
										onclick="readValue(this.value)"> warm <br> <input
										type="radio" value="T" name="Question_51"
										onclick="readValue(this.value)"> objective
								</p>
							</td>
						</tr>

						<tr>
							<td>52</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_52"
										onclick="readValue(this.value)"> objective <br> <input
										type="radio" value="F" name="Question_52"
										onclick="readValue(this.value)"> passionate
								</p>
							</td>
						</tr>

						<tr>
							<td>53</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_53"
										onclick="readValue(this.value)"> build <br> <input
										type="radio" value="N" name="Question_53"
										onclick="readValue(this.value)"> invent
								</p>
							</td>
						</tr>

						<tr>
							<td>54</td>
							<td>
								<p>
									<input type="radio" value="I" name="Question_54"
										onclick="readValue(this.value)"> quiet <br> <input
										type="radio" value="E" name="Question_54"
										onclick="readValue(this.value)"> gregarios
								</p>
							</td>
						</tr>

						<tr>
							<td>55</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_55"
										onclick="readValue(this.value)"> theory <br> <input
										type="radio" value="S" name="Question_55"
										onclick="readValue(this.value)"> fact
								</p>
							</td>
						</tr>

						<tr>
							<td>56</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_56"
										onclick="readValue(this.value)"> compassionate <br>
									<input type="radio" value="T" name="Question_56"
										onclick="readValue(this.value)"> logical
								</p>
							</td>
						</tr>

						<tr>
							<td>57</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_57"
										onclick="readValue(this.value)"> analytical <br>
									<input type="radio" value="F" name="Question_57"
										onclick="readValue(this.value)"> sentimental
								</p>
							</td>
						</tr>

						<tr>
							<td>58</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_58"
										onclick="readValue(this.value)"> sensible <br> <input
										type="radio" value="N" name="Question_58"
										onclick="readValue(this.value)"> fascinating
								</p>
							</td>
						</tr>


						<tr>
							<td>59</td>
							<td>
								<p>
								<br> When you start a big project that is due in a week, do
								you<br /> <input type="radio" value="J" name="Question_59"
								onclick="readValue(this.value)"> take time to list the
								separate things to be done and the order of doing them, or <br>
								<input type="radio" value="P" name="Question_59"
								onclick="readValue(this.value)"> plunge in?
								</p>
							</td>
						</tr>


						<tr>
							<td>60</td>
							<td>
								<p>
									In social situations do you generally find it<br /> <input
										type="radio" value="I" name="Question_60"
										onclick="readValue(this.value)"> difficult to start
									and maintain a conversation with some people, or <br> <input
										type="radio" value="E" name="Question_60"
										onclick="readValue(this.value)"> easy to talk to most
									people for long periods of time?
								</p>
							</td>
						</tr>


						<tr>
							<td>61</td>
							<td>
								<p>
									In doing something that many other people do, does it appeal to
									you more to<br /> <input type="radio" value="S"
										name="Question_61" onclick="readValue(this.value)"> do
									it in the accepted way, or <br> <input type="radio"
										value="N" name="Question_61" onclick="readValue(this.value)">
									invent a way of your own?
								</p>
							</td>
						</tr>


						<tr>
							<td>62</td>
							<td>
								<p>
									Can the new people you meet tell what you are interested in<br>
									<input type="radio" value="E" name="Question_62"
										onclick="readValue(this.value)"> right away, or <br>
									<input type="radio" value="I" name="Question_62"
										onclick="readValue(this.value)"> only after they
									really get to know you?
								</p>
							</td>
						</tr>


						<tr>
							<td>63</td>
							<td>
								<p>
									Do you generally prefer courses that teach<br> <input
										type="radio" value="N" name="Question_63"
										onclick="readValue(this.value)"> concepts and
									principles, or <br> <input type="radio" value="S"
										name="Question_63" onclick="readValue(this.value)">
									facts and figures?
								</p>
							</td>
						</tr>


						<tr>
							<td>64</td>
							<td>
								<p>
									Is it a higher compliment to be called <br> <input
										type="radio" value="F" name="Question_64"
										onclick="readValue(this.value)"> a person of real
									feeling, or <br> <input type="radio" value="T"
										name="Question_64" onclick="readValue(this.value)"> a
									consistently reasonable person?
								</p>
							</td>
						</tr>

						<tr>
							<td>65</td>
							<td>
								<p>
									Do you find going by a schedule <br> <input type="radio"
										value="P" name="Question_65" onclick="readValue(this.value)">
									necessary at times but generally unfavorable, or <br> <input
										type="radio" value="J" name="Question_65"
										onclick="readValue(this.value)"> helpful and favorable
									most of the time?
								</p>
							</td>
						</tr>


						<tr>
							<td>66</td>
							<td>
								<p>
									When you are with a group of people, would you usually rather <br>
									<input type="radio" value="I" name="Question_66"
										onclick="readValue(this.value)"> talk individually
									with people you know well, or <br> <input type="radio"
										value="E" name="Question_66" onclick="readValue(this.value)">
									join in the talk of the group?
								</p>
							</td>
						</tr>


						<tr>
							<td>67</td>
							<td>
								<p>
									At parties do you <br> <input type="radio" value="E"
										name="Question_67" onclick="readValue(this.value)"> do
									much of the talking, or <br> <input type="radio" value="I"
										name="Question_67" onclick="readValue(this.value)">
									let others do most of the talking?
								</p>
							</td>
						</tr>


						<tr>
							<td>68</td>
							<td>
								<p>
									Does the idea of making a list of what you should get done over
									a weekend <br> <input type="radio" value="J"
										name="Question_68" onclick="readValue(this.value)">
									appeal to you, or <br> <input type="radio" value="P"
										name="Question_68" onclick="readValue(this.value)">
									leave you cold?
								</p>
							</td>
						</tr>

						<tr>
							<td>69</td>
							<td>
								<p>
									Which is a higher compliment, to be called<br /> <input
										type="radio" value="T" name="Question_69"
										onclick="readValue(this.value)"> competent, or <br>
									<input type="radio" value="F" name="Question_69"
										onclick="readValue(this.value)"> compassionate?
								</p>
						<tr>
							<td>70</td>
							<td>
								<p>
									Do you generally prefer to<br /> <input type="radio" value="J"
										name="Question_70" onclick="readValue(this.value)">
									make your social engagements some distance ahead, or <br>
									<input type="radio" value="P" name="Question_70"
										onclick="readValue(this.value)"> be free to do things
									on the spur of the moment?
								</p>
							</td>
						</tr>

						<tr>
							<td>71</td>
							<td>
								<p>
									Overall, when working on a bit assignment, do you tend to<br />
									<input type="radio" value="P" name="Question_71"
										onclick="readValue(this.value)"> figure out what needs
									to be done as you go along, or <br> <input type="radio"
										value="J" name="Question_71" onclick="readValue(this.value)">
									begin by breaking it down into steps?
								</p>
							</td>
						</tr>

						<tr>
							<td>72</td>
							<td>
								<p>
									Can you keep a conversation doing indefinitely<br> <input
										type="radio" value="I" name="Question_72"
										onclick="readValue(this.value)"> only with people who
									share some interest of yours, or <br> <input type="radio"
										value="E" name="Question_72" onclick="readValue(this.value)">
									with almost anyone?
								</p>
							</td>
						</tr>

						<tr>
							<td>73</td>
							<td>
								<p>
									Would you rather<br> <input type="radio" value="S"
										name="Question_73" onclick="readValue(this.value)">
									support the established methods of doing good, or <br> <input
										type="radio" value="N" name="Question_73"
										onclick="readValue(this.value)"> analyze what is still
									wrong and attack unsolved problems?
								</p>
							</td>
						</tr>

						<tr>
							<td>74</td>
							<td>
								<p>
									In reading for pleasure, do you <br> <input type="radio"
										value="N" name="Question_74" onclick="readValue(this.value)">
									enjoy odd or original ways of saying things, or <br> <input
										type="radio" value="S" name="Question_74"> like
									writers to say exactly what they mean?
								</p>
							</td>
						</tr>

						<tr>
							<td>75</td>
							<td>
								<p>
									Would you rather work under a boss (or teacher) who is <br>
									<input type="radio" value="F" name="Question_75"
										onclick="readValue(this.value)"> good-natured but
									often inconsisten, or <br> <input type="radio" value="T"
										name="Question_75" onclick="readValue(this.value)">
									sharp-tongued but always logical?
								</p>
							</td>
						</tr>

						<tr>
							<td>76</td>
							<td>
								<p>
									Would you prefer to do most things according to <br> <input
										type="radio" value="P" name="Question_76"
										onclick="readValue(this.value)"> however you feel that
									particular day, or <br> <input type="radio" value="J"
										name="Question_76" onclick="readValue(this.value)"> a
									set schedule?
								</p>
							</td>
						</tr>

						<tr>
							<td>77</td>
							<td>
								<p>
									Can you <br> <input type="radio" value="E"
										name="Question_77" onclick="readValue(this.value)">
									talk easily to almost anyone for as long as you have to, or <br>
									<input type="radio" value="I" name="Question_77"
										onclick="readValue(this.value)"> find a lot to say
									only to certain people or under certain conditions?
								</p>
							</td>
						</tr>

						<tr>
							<td>78</td>
							<td>
								<p>
									When making a decision, is it more important to you to <br>
									<input type="radio" value="T" name="Question_78"
										onclick="readValue(this.value)"> weigh the facts, or <br>
									<input type="radio" value="F" name="Question_78"
										onclick="readValue(this.value)"> consider people's
									feelings and opinions?
								</p>
							</td>
						</tr>


						<tr>
							<td>79</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_79"
										onclick="readValue(this.value)"> imaginative <br>
									<input type="radio" value="S" name="Question_79"
										onclick="readValue(this.value)"> realistic
								</p>
							</td>
						</tr>

						<tr>
							<td>80</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_80"
										onclick="readValue(this.value)"> bighearted <br>
									<input type="radio" value="T" name="Question_80"
										onclick="readValue(this.value)"> firm-minded
								</p>
							</td>
						</tr>

						<tr>
							<td>81</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_81"
										onclick="readValue(this.value)"> fair-minded <br>
									<input type="radio" value="F" name="Question_81"
										onclick="readValue(this.value)"> caring
								</p>
							</td>
						</tr>

						<tr>
							<td>82</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_82"
										onclick="readValue(this.value)"> production <br>
									<input type="radio" value="N" name="Question_82"
										onclick="readValue(this.value)"> design
								</p>
							</td>
						</tr>

						<tr>
							<td>83</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_83"
										onclick="readValue(this.value)"> possibilities <br>
									<input type="radio" value="S" name="Question_83"
										onclick="readValue(this.value)"> certainties
								</p>
							</td>
						</tr>

						<tr>
							<td>84</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_84"
										onclick="readValue(this.value)"> tenderness <br>
									<input type="radio" value="T" name="Question_84"
										onclick="readValue(this.value)"> strength
								</p>
							</td>
						</tr>

						<tr>
							<td>85</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_85"
										onclick="readValue(this.value)"> practical <br> <input
										type="radio" value="F" name="Question_85"
										onclick="readValue(this.value)"> sentimental
								</p>
							</td>
						</tr>

						<tr>
							<td>86</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_86"
										onclick="readValue(this.value)"> make <br> <input
										type="radio" value="N" name="Question_86"
										onclick="readValue(this.value)"> create
								</p>
							</td>
						</tr>

						<tr>
							<td>87</td>
							<td>
								<p>
									<input type="radio" value="N" name="Question_87"
										onclick="readValue(this.value)"> novel <br> <input
										type="radio" value="S" name="Question_87"
										onclick="readValue(this.value)"> already known
								</p>
							</td>
						</tr>

						<tr>
							<td>88</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_88"
										onclick="readValue(this.value)"> sympathize <br>
									<input type="radio" value="T" name="Question_88"
										onclick="readValue(this.value)"> analyze
								</p>
							</td>
						</tr>



						<tr>
							<td>89</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_89"
										onclick="readValue(this.value)"> strong-willed <br>
									<input type="radio" value="F" name="Question_89"
										onclick="readValue(this.value)"> tenderhearted
								</p>
							</td>
						</tr>


						<tr>
							<td>90</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_90"
										onclick="readValue(this.value)"> concrete <br> <input
										type="radio" value="N" name="Question_90"
										onclick="readValue(this.value)"> abstract
								</p>
							</td>
						</tr>


						<tr>
							<td>91</td>
							<td>
								<p>
									<input type="radio" value="F" name="Question_91"
										onclick="readValue(this.value)"> devoted <br> <input
										type="radio" value="T" name="Question_91"
										onclick="readValue(this.value)"> determined
								</p>
							</td>
						</tr>


						<tr>
							<td>92</td>
							<td>
								<p>
									<input type="radio" value="T" name="Question_92"
										onclick="readValue(this.value)"> competent <br> <input
										type="radio" value="F" name="Question_92"
										onclick="readValue(this.value)"> kindhearted
								</p>
							</td>
						</tr>

						<tr>
							<td>93</td>
							<td>
								<p>
									<input type="radio" value="S" name="Question_93"
										onclick="readValue(this.value)"> practical <br> <input
										type="radio" value="N" name="Question_93"
										onclick="readValue(this.value)"> innovative
								</p>
							</td>
						</tr>


					</table>

					<div id="pageNavPosition"></div>

					<div id="click">
						<!--<input type="submit" onclick="showValue()" />&nbsp;<input
							type="reset" />-->
              <button type="button" onclick="showValue()">Submit</button>
					</div>
					<!--<button type="button" onclick="alert(Here)">Submit</button> -->
			</div>

			</fieldset>
		</div>
	</div>
	</div>
	<!--</form> -->


	<script type="text/javascript">
	<!--
		var pager = new Pager("results", 10);
		pager.init();
		pager.showPageNav("pager", "pageNavPosition");
		pager.showPage(1);
	</script>

	<script type="text/javascript">
		//var starter  =0;

		var val_E = 0;
		var val_I = 0;
		var val_S = 0;
		var val_N = 0;
		var val_T = 0;
		var val_F = 0;
		var val_P = 0;
		var val_J = 0;

		function readValue(x) {
			//  var x = document.getElementById("Question_1").value;
			//alert(x);
			if (x == 'E') {
				val_E++;
			}

			if (x == 'I') {
				val_I++;
			}

			if (x == 'S') {
				val_S++;
			}

			if (x == 'N') {
				val_N++;
			}

			if (x == 'T') {
				val_T++;
			}

			if (x == 'F') {
				val_F++;
			}

			if (x == 'P') {
				val_P++;
			}
			if (x == 'J') {
				val_J++;
			}

		}

		function showValue() {
			var element = ""; /*"</b> Values E:<b> " + val_E + "</b> Values I:<b> "
					+ val_I + "</b> Values S:<b> " + val_S
					+ "</b> Values N:<b> " + val_N + "</b> Values T:<b> "
					+ val_T + "</b> Values F:<b> " + val_F
					+ "</b>Values P:<b> " + val_P + " </b> Values J: <b>"
					+ val_J + "</b>";*/

			var combination = "";

			if (val_E > val_I) {
				combination += "E";
			} else {
				combination += "I";
			}

			if (val_S > val_N) {
				combination += "S";
			} else {
				combination += "N";
			}

			if (val_T > val_F) {
				combination += "T";
			} else {
				combination += "F";
			}

			if (val_J > val_P) {
				combination += "J";
			} else {
				combination += "P";
			}

			element += "<p> <strong>Your type is : " + combination+"</strong> </p>";

			var output_result = "";
      var create_table="<table>"
			//case 1
			if (combination == "ESTJ") {
				output_result = "<p>Practical, realistic, matter-of-fact. Decisive, quickly move to implement decisions. Organize projects and people to get things done, focus on getting results in the most efficient way possible. Take care of routine details. Have a clear set of logical standards, systematically follow them and want others to also. Forceful in implementing their plans. </p>";

        create_table += getMeterE();
				create_table += getMeterS();
				create_table += getMeterT();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;

			}
			//case 2
			if (combination == "ESTP") {
				output_result = "<p>Flexible and tolerant, they take a pragmatic approach focused on immediate results. Theories and conceptual explanations bore them - They want to act energtically to solve the problem. Foxus on the here and now, spontaneous, enjoy each moment that they can be active with others. Enjoy material comforts and style. Learn best through doing. </p>";

				create_table += getMeterE();
				create_table += getMeterS();
				create_table += getMeterT();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;

			}

			//case 3
			if (combination == "ESFP") {
				output_result = "<p>Outgoing, friendly, and accepting. Exuberant lovers of life, people, and material comforts. Enjoy working with others to make things happen. Bring common sense and a realistic approach to their work, and make work fun. Flexible and spontaneous, adapt redaily to new people and environments. Learn best by trying a new skill with other people.</p>";

				create_table += getMeterE();
				create_table += getMeterS();
				create_table += getMeterF();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 4
			if (combination == "ESFJ") {
				output_result = "<p>Warmhearted,conscientious, and cooperative. Want harmony in their environment, work with determination to establish it. Lide to work with others to comple tasks accurately and on time. Loyal, follow through even in small matters. Notice what others need in their day-to-day lives and try to provide it. Want to be appreciated for who they are and for what theycontribute. </p>";

				create_table += getMeterE();
				create_table += getMeterS();
				create_table += getMeterF();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 5
			if (combination == "ENFJ") {
				output_result = "<p>Warm, empathetic, responsive, and responsible.Highly attuned to the emotions, needs, and motivations of others. Find potential in everyone, want to help others fulfill their potential. May act as catalyst for individual and group growth. Loyal, responsive to praise and criticism. Sociable, facilitate others in a group, and provide inspiring leadership.</p>";

				create_table += getMeterE();
				create_table += getMeterN();
				create_table += getMeterF();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 6
			if (combination == "ENFP") {
				output_result = "<p>Warmly enthusiastic and imaginative. See life as full of possibilities. Make connections between events and information very quickly, and confidently proceed based on the patterns they see. Want a lot of affirmation from others, and readily give appreciation and support. Spontaneous and flexible, often rely on their ability to improvise and their verbal fluency. </p>";

				create_table += getMeterE();
				create_table += getMeterN();
				create_table += getMeterF();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 7
			if (combination == "ENTP") {
				output_result = "<p>Quick, ingenious,"
						+ "stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. "
						+ "Adept at generating conceptual possibilities and then analyzing them strategically. Good "
						+ "at reading other people. Bored by routine, will seldom do the same thing the same way, apt "
						+ "to turn to one new interest after another. </p>";

  			create_table += getMeterE();
				create_table += getMeterN();
				create_table += getMeterT();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;
			}
			//case 8
			if (combination == "ENTJ") {
				output_result = "<p>Frank, decisive, assume leadership readily. Quickly see illogical and inefficient procedures and policies, develop and implement comprehensive systems to solve organizational problems. Enjoy long-term planning and goal setting. Usually well informed, well read, enjoy expanding their knowledge and passing it on to others. Forceful in presenting their ideas. </p>";

				create_table += getMeterE();
				create_table += getMeterN();
				create_table += getMeterT();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 9
			if (combination == "ISFJ") {
				output_result = "<p>Quiet, friendly, responsible, and conscientious."
						+ " Committed and steady in meeting their obligations.Thorough, painstaking, and accurate."
						+ " Loyal, considerate, notice and remember specifics about people who are important to them,concerned with how others feel."
						+ " Strive to create an orderly and harmonious environment at work and at home.</p>";

				create_table += getMeterI();
				create_table += getMeterS();
				create_table += getMeterF();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;
			}
			//case 10
			if (combination == "ISFP") {
				output_result = "<p>Quiet, friendly,sensitive,and kind. Enjoy the present moment, what's going on around them. Like to have their own space and to work within their own time frame.Loyal and committed to their values and to people who are important to them.Dislike disagreements and conflicts, do not force their opinions or values on others.</p>";
				create_table += getMeterI();
				create_table += getMeterS();
				create_table += getMeterF();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 11
			if (combination == "ISTP") {
				output_result = "<p>Tolerant and flexible, quiet observers"
						+ "until a problem appears, then act quickly to find workable solutions."
						+ " Analyze what makes things work and readily get through large amounts "
						+ "of data to isolate the core of practical problems.Interested in cause and effect,organize facts using logical principles,value efficiency.</p>";

        create_table += getMeterI();
				create_table += getMeterS();
				create_table += getMeterT();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;
			}
			//case 12
			if (combination == "ISTJ") {
				output_result = "<p>Quiet,serious, earn success by thor­ oughness and dependability. Practical, matter-of-fact, realistic, and responsible. Decide logically what should be done and work toward it steadily,regardless of distractions.Take pleasure in making everything orderly and organized-their work, their home, their life. Value traditions and loyalty.</p>";

        create_table += getMeterI();
				create_table += getMeterS();
				create_table += getMeterT();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 13
			if (combination == "INTJ") {
				output_result = "<p>Have original minds and great drive for implementing their ideas and achiev- ing their goals. "
						+ "Quickly see patterns in external events and develop long-range explanatory perspectives. "
						+ "When commit­ ted, organize a job and carry it through. Skeptical and independent, have high standards of competence and "
						+ "perfor­ mance-for themselves and others.</p>";

        create_table += getMeterI();
				create_table += getMeterN();
				create_table += getMeterT();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 14
			if (combination == "INTP") {
				output_result = "<p>Seek to develop logical explanations for everythni g that interests them. Theoretical and abstract, interested more in ideas than in socialinteraction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skepti­ cal, sometimes critical, always analytical.</p>";

        create_table += getMeterI();
				create_table += getMeterN();
				create_table += getMeterT();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 15
			if (combination == "INFP") {
				output_result = "<p>Idealistic,loyal to their values and to people who are important to them. "
						+ "Want an external life that is congruent with their values.Curious,quick to see possi­bilities,can be"
						+ " catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.</p>";

				create_table += getMeterI();
				create_table += getMeterN();
				create_table += getMeterF();
				create_table += getMeterP();

        create_table += "</table>";
        output_result += create_table;
			}

			//case 16
			if (combination == "INFJ") {
				output_result = "<p>Seek meaning and connection in ideas, relationships,and material possessions. Want to understand what motivates people and are insightful about others. Conscientious and committed to their firm values.Develop a clear vision about how best to serve the common good. Organized and decisive in implementing their vision.</p>";
				create_table += getMeterI();
				create_table += getMeterN();
				create_table += getMeterF();
				create_table += getMeterJ();

        create_table += "</table>";
        output_result += create_table;
			}

			document.getElementById('data').innerHTML = element + output_result;

			var parent = document.getElementById('contentwrapper');
			var child = document.getElementById('results');

			child.style.display = 'none';

			var pagination = document.getElementById('pageNavPosition');
			pagination.style.display = 'none';
			var input_button = document.getElementById('click');
			input_button.style.display = 'none';
		}

		function getMeterE() {
			var meterE = "<tr><td> E </td><td> <meter value='"+ val_E + "' min='0' max='21'></meter></td><td> "
					+ val_E + " Out of 21 </td></tr>";
			return meterE;
		}

		function getMeterI() {
			var meterI = "<tr><td> I </td> <td> <meter value='"+ val_I + "' min='0' max='21'></meter> </td> <td> "
					+ val_I + " Out of 21 </td> </tr>";
			return meterI;
		}

		function getMeterS() {
			var meterS = "<tr><td> S  </td><td> <meter value='"+ val_S + "' min='0' max='26'></meter> </td><td> "
					+ val_S + " Out of 26 </td> </tr>";
			return meterS;
		}

		function getMeterN() {
			var meterN = "<tr><td> N </td><td> <meter value='"+ val_N + "' min='0' max='26'></meter> </td><td> "
					+ val_N + " Out of 26 </td> </tr>";
			return meterN;
		}

		function getMeterT() {
			var meterT = "<tr><td> T  </td><td><meter value='"+ val_T + "' min='0' max='24'></meter> </td><td> "
					+ val_T + " Out of 24 </td> </tr>";
			return meterT;
		}

		function getMeterF() {
			var meterF = "<tr><td> F </td> <td> <meter value='"+ val_F + "' min='0' max='24'></meter> </td><td> "
					+ val_F + " Out of 24 </div></td>";
			return meterF;
		}

		function getMeterP() {
			var meterP = "<tr><td> P </td><td> <meter value='"+ val_P + "' min='0' max='22'></meter> </td><td>"
					+ val_P + " Out of 22 </td></tr>";
			return meterP;
		}

		function getMeterJ() {
			var meterJ = "<tr> <td> J </td><td>  <meter value='"+ val_J + "' min='0' max='22'></meter> </td> <td> "
					+ val_J + " Out of 22 </td></tr>";
			return meterJ;
		}
	</script>


</body>
</html>
