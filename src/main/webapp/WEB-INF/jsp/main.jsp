<%@ include file="/WEB-INF/jsp/header.jsp" %>
			
			<div class="main">
				<h2>Of their Magistrates</h2>
				<p>Thirty families choose every year a magistrate, who was anciently called the Syphogrant, but is now called the Philarch; and over every ten Syphogrants, with the families subject to them, there is another magistrate, who was anciently called the Tranibore, but of late the Archphilarch.  All the Syphogrants, who are in number two hundred, choose the Prince out of a list of four who are named by the people of the four divisions of the city; but they take an oath, before they proceed to an election, that they will choose him whom they think most fit for the office: they give him their voices secretly, so that it is not known for whom every one gives his suffrage.  The Prince is for life, unless he is removed upon suspicion of some design to enslave the people.  The Tranibors are new chosen every year, but yet they are, for the most part, continued; all their other magistrates are only annual.  The Tranibors meet every third day, and oftener if necessary, and consult with the Prince either concerning the affairs of the State in general, or such private differences as may arise sometimes among the people, though that falls out but seldom.  There are always two Syphogrants called into the council chamber, and these are changed every day.  It is a fundamental rule of their government, that no conclusion can be made in anything that relates to the public till it has been first debated three several days in their council.  It is death for any to meet and consult concerning the State, unless it be either in their ordinary council, or in the assembly of the whole body of the people.</p>

				<p>These things have been so provided among them that the Prince and the Tranibors may not conspire together to change the government and enslave the people; and therefore when anything of great importance is set on foot, it is sent to the Syphogrants, who, after they have communicated it to the families that belong to their divisions, and have considered it among themselves, make report to the senate; and, upon great occasions, the matter is referred to the council of the whole island.  One rule observed in their council is, never to debate a thing on the same day in which it is first proposed; for that is always referred to the next meeting, that so men may not rashly and in the heat of discourse engage themselves too soon, which might bias them so much that, instead of consulting the good of the public, they might rather study to support their first opinions, and by a perverse and preposterous sort of shame hazard their country rather than endanger their own reputation, or venture the being suspected to have wanted foresight in the expedients that they at first proposed; and therefore, to prevent this, they take care that they may rather be deliberate than sudden in their motions.</p>

				<h2>Of their trades, and manner of life</h2>

				<p>Agriculture is that which is so universally understood among them that no person, either man or woman, is ignorant of it; they are instructed in it from their childhood, partly by what they learn at school, and partly by practice, they being led out often into the fields about the town, where they not only see others at work but are likewise exercised in it themselves.  Besides agriculture, which is so common to them all, every man has some peculiar trade to which he applies himself; such as the manufacture of wool or flax, masonry, smith’s work, or carpenter’s work; for there is no sort of trade that is in great esteem among them.  Throughout the island they wear the same sort of clothes, without any other distinction except what is necessary to distinguish the two sexes and the married and unmarried.  The fashion never alters, and as it is neither disagreeable nor uneasy, so it is suited to the climate, and calculated both for their summers and winters.  Every family makes their own clothes; but all among them, women as well as men, learn one or other of the trades formerly mentioned.  Women, for the most part, deal in wool and flax, which suit best with their weakness, leaving the ruder trades to the men.  The same trade generally passes down from father to son, inclinations often following descent: but if any man’s genius lies another way he is, by adoption, translated into a family that deals in the trade to which he is inclined; and when that is to be done, care is taken, not only by his father, but by the magistrate, that he may be put to a discreet and good man: and if, after a person has learned one trade, he desires to acquire another, that is also allowed, and is managed in the same manner as the former.  When he has learned both, he follows that which he likes best, unless the public has more occasion for the other.</p>
			</div>
		</div>
		
		<script>
		var favicon;
        var faviconCount = 0;
        P.when('jQuery', 'favicon').execute(function($){
            initializeFavicon(this.$);
        });

        P.when('jQuery').execute(function($){
        	loadJS('/resources/js/favicon.js', function() {P.register('favicon');});
        });
        
        var initializeFavicon = function($) {
        	favicon=new Favico({
                bgColor : '#ff0000',
                textColor : '#ff0',
                type: 'rectangle',
                animation:'fade'
            });
        	favicon.badge(2);
        }
		</script>
	</body>
</html>
