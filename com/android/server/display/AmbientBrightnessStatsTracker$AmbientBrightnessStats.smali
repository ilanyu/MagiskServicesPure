.class Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmbientBrightnessStats"
.end annotation


# static fields
.field private static final ATTR_BUCKET_BOUNDARIES:Ljava/lang/String; = "bucket-boundaries"

.field private static final ATTR_BUCKET_STATS:Ljava/lang/String; = "bucket-stats"

.field private static final ATTR_LOCAL_DATE:Ljava/lang/String; = "local-date"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final TAG_AMBIENT_BRIGHTNESS_DAY_STATS:Ljava/lang/String; = "ambient-brightness-day-stats"

.field private static final TAG_AMBIENT_BRIGHTNESS_STATS:Ljava/lang/String; = "ambient-brightness-stats"


# instance fields
.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 148
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 150
    return-void
.end method

.method private getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;
    .registers 7
    .param p2, "localDate"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/hardware/display/AmbientBrightnessDayStats;"
        }
    .end annotation

    .line 290
    .local p1, "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 291
    .local v0, "lastBrightnessStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 293
    return-object v0

    .line 295
    :cond_13
    new-instance v1, Landroid/hardware/display/AmbientBrightnessDayStats;

    sget-object v2, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    invoke-direct {v1, p2, v2}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F)V

    .line 297
    .local v1, "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_24

    .line 298
    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 300
    :cond_24
    invoke-interface {p1, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 301
    return-object v1
.end method

.method private getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;I)",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 282
    .local p1, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    return-object v0
.end method


# virtual methods
.method public getUserStats(I)Ljava/util/ArrayList;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 163
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(ILjava/time/LocalDate;FF)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "localDate"    # Ljava/time/LocalDate;
    .param p3, "ambientBrightness"    # F
    .param p4, "durationSec"    # F

    .line 154
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v0

    .line 155
    .local v0, "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    invoke-direct {p0, v0, p2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;

    move-result-object v1

    .line 156
    .local v1, "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    invoke-virtual {v1, p3, p4}, Landroid/hardware/display/AmbientBrightnessDayStats;->log(FF)V

    .line 157
    return-void
.end method

.method public readFromXML(Ljava/io/InputStream;)V
    .registers 19
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 208
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 210
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_11f
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_11} :catch_11f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_11} :catch_11f
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_11} :catch_11f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_11f

    move-object/from16 v4, p1

    :try_start_13
    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 213
    :goto_16
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v5, v3

    .line 213
    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v3, v6, :cond_22

    const/4 v3, 0x2

    if-eq v5, v3, :cond_22

    .line 213
    .end local v5    # "type":I
    goto :goto_16

    .line 216
    .restart local v5    # "type":I
    :cond_22
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "tag":Ljava/lang/String;
    const-string v7, "ambient-brightness-stats"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 222
    iget-object v7, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
    invoke-static {v7}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v7

    const-wide/16 v8, 0x7

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    .line 223
    .local v7, "cutOffDate":Ljava/time/LocalDate;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 224
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 225
    .local v8, "outerDepth":I
    :goto_45
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v5, v9

    if-eq v9, v6, :cond_fe

    const/4 v9, 0x3

    if-ne v5, v9, :cond_5a

    .line 226
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_56

    goto :goto_5a

    .line 260
    :cond_56
    move-object/from16 v16, v2

    goto/16 :goto_100

    .line 227
    :cond_5a
    :goto_5a
    if-eq v5, v9, :cond_f7

    const/4 v9, 0x4

    if-ne v5, v9, :cond_64

    .line 228
    nop

    .line 224
    move-object/from16 v16, v2

    goto/16 :goto_f9

    .line 230
    :cond_64
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 231
    const-string v9, "ambient-brightness-day-stats"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 232
    const-string/jumbo v9, "user"

    const/4 v10, 0x0

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "userSerialNumber":Ljava/lang/String;
    const-string/jumbo v11, "local-date"

    .line 234
    invoke-interface {v2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 233
    invoke-static {v11}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v11

    .line 235
    .local v11, "localDate":Ljava/time/LocalDate;
    const-string v12, "bucket-boundaries"

    invoke-interface {v2, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    .line 236
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "bucketBoundaries":[Ljava/lang/String;
    const-string v13, "bucket-stats"

    invoke-interface {v2, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, ","

    .line 238
    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, "bucketStats":[Ljava/lang/String;
    array-length v13, v12

    array-length v14, v10

    if-ne v13, v14, :cond_ed

    array-length v13, v12

    if-lt v13, v6, :cond_ed

    .line 243
    array-length v13, v12

    new-array v13, v13, [F

    .line 244
    .local v13, "parsedBucketBoundaries":[F
    array-length v14, v10

    new-array v14, v14, [F

    .line 245
    .local v14, "parsedBucketStats":[F
    const/4 v15, 0x0

    .line 245
    .local v15, "i":I
    :goto_aa
    array-length v6, v12

    if-ge v15, v6, :cond_c1

    .line 246
    aget-object v6, v12, v15

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v13, v15

    .line 247
    aget-object v6, v10, v15

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v14, v15

    .line 245
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    goto :goto_aa

    .line 249
    .end local v15    # "i":I
    :cond_c1
    iget-object v6, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
    invoke-static {v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v6

    iget-object v15, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;
    invoke-static {v15}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v15

    .line 250
    move-object/from16 v16, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 249
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v6, v15, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v2

    .line 251
    .local v2, "userId":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_ec

    invoke-virtual {v11, v7}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 252
    invoke-direct {v1, v0, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v6

    .line 254
    .local v6, "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    new-instance v15, Landroid/hardware/display/AmbientBrightnessDayStats;

    invoke-direct {v15, v11, v13, v14}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    invoke-interface {v6, v15}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 258
    .end local v2    # "userId":I
    .end local v6    # "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    .end local v9    # "userSerialNumber":Ljava/lang/String;
    .end local v10    # "bucketStats":[Ljava/lang/String;
    .end local v11    # "localDate":Ljava/time/LocalDate;
    .end local v12    # "bucketBoundaries":[Ljava/lang/String;
    .end local v13    # "parsedBucketBoundaries":[F
    .end local v14    # "parsedBucketStats":[F
    :cond_ec
    goto :goto_f9

    .line 241
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "userSerialNumber":Ljava/lang/String;
    .restart local v10    # "bucketStats":[Ljava/lang/String;
    .restart local v11    # "localDate":Ljava/time/LocalDate;
    .restart local v12    # "bucketBoundaries":[Ljava/lang/String;
    :cond_ed
    move-object/from16 v16, v2

    .line 241
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Invalid brightness stats string."

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v9    # "userSerialNumber":Ljava/lang/String;
    .end local v10    # "bucketStats":[Ljava/lang/String;
    .end local v11    # "localDate":Ljava/time/LocalDate;
    .end local v12    # "bucketBoundaries":[Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_f7
    move-object/from16 v16, v2

    .line 224
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_f9
    move-object/from16 v2, v16

    const/4 v6, 0x1

    goto/16 :goto_45

    .line 260
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_fe
    move-object/from16 v16, v2

    .line 260
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_100
    iput-object v0, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 264
    .end local v0    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v7    # "cutOffDate":Ljava/time/LocalDate;
    .end local v8    # "outerDepth":I
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 265
    return-void

    .line 218
    .restart local v0    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v5    # "type":I
    :cond_104
    move-object/from16 v16, v2

    .line 218
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ambient brightness stats not found in tracker file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11d
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_11d} :catch_11d
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_11d} :catch_11d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_11d} :catch_11d
    .catch Ljava/time/format/DateTimeParseException; {:try_start_13 .. :try_end_11d} :catch_11d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_11d} :catch_11d

    .line 261
    .end local v0    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_11d
    move-exception v0

    goto :goto_122

    :catch_11f
    move-exception v0

    move-object/from16 v4, p1

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    :goto_122
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse brightness stats file."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 272
    .local v4, "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v4    # "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    goto :goto_25

    .line 276
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    :cond_4b
    goto :goto_f

    .line 277
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToXML(Ljava/io/OutputStream;)V
    .registers 14
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 169
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 173
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
    invoke-static {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v4, 0x7

    invoke-virtual {v1, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    .line 174
    .local v1, "cutOffDate":Ljava/time/LocalDate;
    const-string v2, "ambient-brightness-stats"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-object v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 176
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 177
    .local v6, "userDayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    iget-object v7, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
    invoke-static {v7}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    # getter for: Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;
    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v8

    .line 178
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 177
    invoke-virtual {v7, v8, v9}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v7

    .line 179
    .local v7, "userSerialNumber":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_eb

    invoke-virtual {v6}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 180
    const-string v8, "ambient-brightness-day-stats"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const-string/jumbo v8, "user"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string/jumbo v8, "local-date"

    .line 183
    invoke-virtual {v6}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v8, "bucketBoundariesValues":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v9, "timeSpentValues":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 186
    .local v10, "i":I
    :goto_ac
    invoke-virtual {v6}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_d4

    .line 187
    if-lez v10, :cond_bf

    .line 188
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_bf
    invoke-virtual {v6}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v11

    aget v11, v11, v10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v6}, Landroid/hardware/display/AmbientBrightnessDayStats;->getStats()[F

    move-result-object v11

    aget v11, v11, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v10, v10, 0x1

    goto :goto_ac

    .line 194
    .end local v10    # "i":I
    :cond_d4
    const-string v10, "bucket-boundaries"

    .line 195
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 194
    invoke-interface {v0, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string v10, "bucket-stats"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const-string v10, "ambient-brightness-day-stats"

    invoke-interface {v0, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .end local v6    # "userDayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    .end local v7    # "userSerialNumber":I
    .end local v8    # "bucketBoundariesValues":Ljava/lang/StringBuilder;
    .end local v9    # "timeSpentValues":Ljava/lang/StringBuilder;
    :cond_eb
    goto/16 :goto_51

    .line 200
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    :cond_ed
    goto/16 :goto_3b

    .line 201
    :cond_ef
    const-string v2, "ambient-brightness-stats"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 203
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 204
    return-void
.end method
