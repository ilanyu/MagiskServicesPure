.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z

    .line 590
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 592
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 593
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 887
    const-string/jumbo v0, "jobid"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 888
    .local v0, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v0, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 898
    const-string/jumbo v0, "net-capabilities"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "netCapabilities":Ljava/lang/String;
    const-string/jumbo v2, "net-unwanted-capabilities"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, "netUnwantedCapabilities":Ljava/lang/String;
    const-string/jumbo v3, "net-transport-types"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "netTransportTypes":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v0, :cond_57

    if-eqz v3, :cond_57

    .line 903
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 904
    .local v5, "request":Landroid/net/NetworkRequest;
    if-eqz v2, :cond_2b

    .line 905
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_35

    .line 906
    :cond_2b
    iget-object v6, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v6

    .line 909
    .local v6, "unwantedCapabilities":J
    :goto_35
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 910
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 911
    invoke-static {v6, v7}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v10

    .line 909
    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    .line 912
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 913
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 912
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 914
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 915
    .end local v5    # "request":Landroid/net/NetworkRequest;
    .end local v6    # "unwantedCapabilities":J
    goto :goto_89

    .line 917
    :cond_57
    const-string v5, "connectivity"

    invoke-interface {p2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 918
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_62

    .line 919
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 921
    :cond_62
    const-string/jumbo v6, "metered"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 922
    if-eqz v5, :cond_6f

    .line 923
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 925
    :cond_6f
    const-string/jumbo v6, "unmetered"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 926
    if-eqz v5, :cond_7c

    .line 927
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 929
    :cond_7c
    const-string/jumbo v6, "not-roaming"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 930
    if-eqz v5, :cond_89

    .line 931
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 935
    .end local v5    # "val":Ljava/lang/String;
    :cond_89
    :goto_89
    const-string v5, "idle"

    invoke-interface {p2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 936
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_94

    .line 937
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 939
    :cond_94
    const-string v6, "charging"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 940
    if-eqz v5, :cond_9f

    .line 941
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 944
    :cond_9f
    const-string v6, "battery-not-low"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 945
    if-eqz v5, :cond_aa

    .line 946
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 948
    :cond_aa
    const-string/jumbo v6, "storage-not-low"

    invoke-interface {p2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 949
    .end local v5    # "val":Ljava/lang/String;
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_b6

    .line 950
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 953
    :cond_b6
    return-void
.end method

.method private buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1004
    move-object/from16 v0, p1

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1005
    .local v1, "nowWallclock":J
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 1007
    .local v3, "nowElapsed":J
    const-wide/16 v5, 0x0

    .line 1008
    .local v5, "earliestRunTimeElapsed":J
    const-wide v7, 0x7fffffffffffffffL

    .line 1009
    .local v7, "latestRunTimeElapsed":J
    const-string v9, "deadline"

    const/4 v10, 0x0

    invoke-interface {v0, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1010
    .local v9, "val":Ljava/lang/String;
    const-wide/16 v11, 0x0

    if-eqz v9, :cond_2e

    .line 1011
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1012
    .local v13, "latestRuntimeWallclock":J
    move-wide v15, v5

    sub-long v5, v13, v1

    .line 1013
    .end local v5    # "earliestRunTimeElapsed":J
    .local v15, "earliestRunTimeElapsed":J
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1014
    .local v5, "maxDelayElapsed":J
    add-long v7, v3, v5

    .end local v5    # "maxDelayElapsed":J
    .end local v13    # "latestRuntimeWallclock":J
    goto :goto_2f

    .line 1016
    .end local v15    # "earliestRunTimeElapsed":J
    .local v5, "earliestRunTimeElapsed":J
    :cond_2e
    move-wide v15, v5

    .end local v5    # "earliestRunTimeElapsed":J
    .restart local v15    # "earliestRunTimeElapsed":J
    :goto_2f
    const-string v5, "delay"

    invoke-interface {v0, v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1017
    .end local v9    # "val":Ljava/lang/String;
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_44

    .line 1018
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1019
    .local v9, "earliestRuntimeWallclock":J
    sub-long v13, v9, v1

    .line 1020
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1021
    .local v11, "minDelayElapsed":J
    add-long v9, v3, v11

    .end local v11    # "minDelayElapsed":J
    .end local v15    # "earliestRunTimeElapsed":J
    .local v9, "earliestRunTimeElapsed":J
    goto :goto_45

    .line 1024
    .end local v9    # "earliestRunTimeElapsed":J
    .restart local v15    # "earliestRunTimeElapsed":J
    :cond_44
    move-wide v9, v15

    .end local v15    # "earliestRunTimeElapsed":J
    .restart local v9    # "earliestRunTimeElapsed":J
    :goto_45
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 984
    const-string v0, "delay"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 986
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_10

    .line 987
    :cond_e
    const-wide/16 v2, 0x0

    .line 988
    .local v2, "earliestRunTimeRtc":J
    :goto_10
    const-string v4, "deadline"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_1d

    .line 990
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_22

    .line 991
    :cond_1d
    const-wide v4, 0x7fffffffffffffffL

    .line 992
    .local v4, "latestRunTimeRtc":J
    :goto_22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 960
    const-string v0, "initial-backoff"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 962
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 963
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 965
    .local v1, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 967
    .end local v1    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_1a
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .registers 13
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "rtcIsGood"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 644
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 646
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 647
    .local v1, "eventType":I
    :goto_11
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_36

    if-eq v1, v3, :cond_36

    .line 649
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 650
    const-string v2, "JobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 652
    :cond_36
    const/4 v4, 0x0

    if-ne v1, v3, :cond_47

    .line 653
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 654
    const-string v2, "JobStore"

    const-string v3, "No persisted jobs."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_46
    return-object v4

    .line 659
    :cond_47
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 660
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "job-info"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 661
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v6, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_59
    const-string/jumbo v7, "version"

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 665
    .local v7, "version":I
    if-eqz v7, :cond_6e

    .line 666
    const-string v2, "JobStore"

    const-string v3, "Invalid version number, aborting jobs file read."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_6d} :catch_b7

    .line 667
    return-object v4

    .line 672
    .end local v7    # "version":I
    :cond_6e
    nop

    .line 673
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 676
    :cond_73
    if-ne v1, v2, :cond_b0

    .line 677
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 679
    .end local v5    # "tagName":Ljava/lang/String;
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "job"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 680
    invoke-direct {p0, p2, v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    .line 681
    .local v5, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v5, :cond_a8

    .line 682
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 683
    const-string v7, "JobStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_a4
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 687
    :cond_a8
    const-string v7, "JobStore"

    const-string v8, "Error reading job from file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v5    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_af
    :goto_af
    move-object v5, v4

    .line 691
    .end local v4    # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    :cond_b0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 692
    if-ne v1, v3, :cond_73

    .line 693
    return-object v6

    .line 669
    :catch_b7
    move-exception v2

    .line 670
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "JobStore"

    const-string v7, "Invalid version number, aborting jobs file read."

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-object v4

    .line 695
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_c0
    return-object v4
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .registers 49
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 709
    move-object/from16 v2, p2

    const/4 v0, 0x0

    move v3, v0

    .line 713
    .local v3, "internalFlags":I
    const/4 v4, 0x0

    :try_start_7
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 714
    .local v5, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 715
    const-string/jumbo v7, "uid"

    invoke-interface {v2, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 717
    .local v7, "uid":I
    const-string/jumbo v8, "priority"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 718
    .local v8, "val":Ljava/lang/String;
    if-eqz v8, :cond_2a

    .line 719
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 721
    :cond_2a
    const-string v9, "flags"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 722
    if-eqz v8, :cond_3a

    .line 723
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 725
    :cond_3a
    const-string v9, "internalFlags"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 726
    if-eqz v8, :cond_48

    .line 727
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_47} :catch_3a8

    move v3, v9

    .line 729
    :cond_48
    :try_start_48
    const-string/jumbo v9, "sourceUserId"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 730
    if-nez v8, :cond_54

    const/4 v9, -0x1

    goto :goto_58

    :cond_54
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_58
    move v13, v9

    .line 732
    .local v13, "sourceUserId":I
    const-string/jumbo v9, "lastSuccessfulRunTime"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 733
    if-nez v8, :cond_66

    const-wide/16 v21, 0x0

    goto :goto_6c

    :cond_66
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v21, v11

    .line 735
    .local v21, "lastSuccessfulRunTime":J
    :goto_6c
    const-string/jumbo v11, "lastFailedRunTime"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 736
    if-nez v8, :cond_79

    const-wide/16 v23, 0x0

    goto :goto_7f

    :cond_79
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_7d} :catch_3a4

    move-wide/from16 v23, v11

    .line 740
    .end local v8    # "val":Ljava/lang/String;
    .local v23, "lastFailedRunTime":J
    :goto_7f
    nop

    .line 739
    nop

    .line 742
    const-string/jumbo v8, "sourcePackageName"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 743
    .local v8, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v11, "sourceTag"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    .line 748
    .local v16, "sourceTag":Ljava/lang/String;
    :goto_91
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 749
    .local v11, "eventType":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_39f

    .line 751
    const/4 v14, 0x2

    if-ne v11, v14, :cond_397

    const-string v15, "constraints"

    .line 752
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 754
    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v33, v13

    move-object v7, v4

    goto/16 :goto_39e

    .line 757
    :cond_b0
    :try_start_b0
    invoke-direct {v1, v5, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_b0 .. :try_end_b3} :catch_386

    .line 761
    nop

    .line 762
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 766
    :goto_b7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 767
    if-eq v11, v12, :cond_37b

    .line 768
    if-eq v11, v14, :cond_c0

    .line 769
    return-object v4

    .line 775
    :cond_c0
    :try_start_c0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v9
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_c4} :catch_362

    move-object v10, v9

    .line 781
    .local v10, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    nop

    .line 780
    nop

    .line 783
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move/from16 v29, v13

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 784
    .end local v13    # "sourceUserId":I
    .local v12, "elapsedNow":J
    .local v29, "sourceUserId":I
    # invokes: Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    invoke-static {v10, v12, v13}, Lcom/android/server/job/JobStore;->access$500(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v9

    .line 786
    .local v9, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string/jumbo v15, "periodic"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1df

    .line 788
    :try_start_e0
    const-string/jumbo v14, "period"

    invoke-interface {v2, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 789
    .local v14, "val":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v32, v17

    .line 790
    .local v32, "periodMillis":J
    const-string v15, "flex"

    invoke-interface {v2, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_f3
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_f3} :catch_1cc

    move-object v14, v15

    .line 791
    if-eqz v14, :cond_10b

    :try_start_f6
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_f6 .. :try_end_fe} :catch_ff

    goto :goto_10d

    .line 816
    .end local v14    # "val":Ljava/lang/String;
    .end local v32    # "periodMillis":J
    :catch_ff
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v37, v5

    move v3, v7

    move-object/from16 v43, v10

    move/from16 v44, v11

    goto/16 :goto_1d6

    .line 791
    .restart local v14    # "val":Ljava/lang/String;
    .restart local v32    # "periodMillis":J
    :cond_10b
    move-wide/from16 v17, v32

    :goto_10d
    move-wide/from16 v34, v17

    .line 792
    .local v34, "flexMillis":J
    move/from16 v36, v7

    move-wide/from16 v0, v32

    move-wide/from16 v6, v34

    :try_start_115
    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 797
    .end local v7    # "uid":I
    .end local v32    # "periodMillis":J
    .end local v34    # "flexMillis":J
    .local v0, "periodMillis":J
    .local v6, "flexMillis":J
    .local v36, "uid":I
    iget-object v15, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_120
    .catch Ljava/lang/NumberFormatException; {:try_start_115 .. :try_end_120} :catch_1c0

    add-long v32, v12, v0

    add-long v32, v32, v6

    cmp-long v15, v17, v32

    if-lez v15, :cond_1af

    .line 798
    add-long v34, v12, v6

    move-object/from16 v37, v5

    add-long v4, v34, v0

    .line 800
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v4, "clampedLateRuntimeElapsed":J
    .local v37, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    move-wide/from16 v38, v0

    sub-long v0, v4, v6

    .line 802
    .local v0, "clampedEarlyRuntimeElapsed":J
    .local v38, "periodMillis":J
    :try_start_132
    const-string v15, "JobStore"

    move-wide/from16 v40, v6

    const-string v6, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    .line 802
    .end local v6    # "flexMillis":J
    .local v40, "flexMillis":J
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;
    :try_end_13b
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_13b} :catch_1a5

    .line 805
    move/from16 v42, v3

    move/from16 v3, v36

    :try_start_13f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 805
    .end local v36    # "uid":I
    .local v3, "uid":I
    .local v42, "internalFlags":I
    const/16 v18, 0x0

    aput-object v17, v7, v18
    :try_end_147
    .catch Ljava/lang/NumberFormatException; {:try_start_13f .. :try_end_147} :catch_19f

    move-object/from16 v43, v10

    :try_start_149
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 805
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v43, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    check-cast v10, Ljava/lang/Long;

    .line 806
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_151
    .catch Ljava/lang/NumberFormatException; {:try_start_149 .. :try_end_151} :catch_19b

    const-wide/16 v19, 0x3e8

    move/from16 v44, v11

    :try_start_155
    div-long v10, v17, v19

    .line 806
    .end local v11    # "eventType":I
    .local v44, "eventType":I
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x1

    aput-object v10, v7, v17

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    .line 807
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    div-long v10, v10, v19

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v7, v11

    div-long v10, v0, v19

    .line 808
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v7, v11

    div-long v10, v4, v19

    .line 810
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v7, v11

    .line 803
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 802
    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    nop

    .line 814
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6
    :try_end_196
    .catch Ljava/lang/NumberFormatException; {:try_start_155 .. :try_end_196} :catch_199

    move-object v0, v6

    .line 819
    .end local v4    # "clampedLateRuntimeElapsed":J
    .end local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v14    # "val":Ljava/lang/String;
    .end local v38    # "periodMillis":J
    .end local v40    # "flexMillis":J
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object v9, v0

    goto :goto_1b9

    .line 816
    .end local v0    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_199
    move-exception v0

    goto :goto_1d6

    .line 816
    .end local v44    # "eventType":I
    .restart local v11    # "eventType":I
    :catch_19b
    move-exception v0

    move/from16 v44, v11

    .line 816
    .end local v11    # "eventType":I
    .restart local v44    # "eventType":I
    goto :goto_1d6

    .line 816
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    :catch_19f
    move-exception v0

    move-object/from16 v43, v10

    move/from16 v44, v11

    .line 816
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    goto :goto_1d6

    .line 816
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v36    # "uid":I
    :catch_1a5
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v43, v10

    move/from16 v44, v11

    move/from16 v3, v36

    .line 816
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v36    # "uid":I
    .local v3, "uid":I
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    goto :goto_1d6

    .line 819
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v36    # "uid":I
    :cond_1af
    move/from16 v42, v3

    move-object/from16 v37, v5

    move-object/from16 v43, v10

    move/from16 v44, v11

    move/from16 v3, v36

    .line 840
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v36    # "uid":I
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    :goto_1b9
    move-object v0, v9

    move-object/from16 v6, v37

    const-wide/16 v4, 0x0

    goto/16 :goto_247

    .line 816
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v36    # "uid":I
    :catch_1c0
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v37, v5

    move-object/from16 v43, v10

    move/from16 v44, v11

    move/from16 v3, v36

    .line 816
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v36    # "uid":I
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    goto :goto_1d6

    .line 816
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    :catch_1cc
    move-exception v0

    move/from16 v42, v3

    move-object/from16 v37, v5

    move v3, v7

    move-object/from16 v43, v10

    move/from16 v44, v11

    .line 817
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    :goto_1d6
    const-string v1, "JobStore"

    const-string v4, "Error reading periodic execution criteria, skipping."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v1, 0x0

    return-object v1

    .line 820
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v42    # "internalFlags":I
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    :cond_1df
    move/from16 v42, v3

    move-object/from16 v37, v5

    move v3, v7

    move-object/from16 v43, v10

    move/from16 v44, v11

    .line 820
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .local v3, "uid":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v42    # "internalFlags":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    const-string/jumbo v0, "one-off"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_338

    .line 822
    :try_start_1f5
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1fd
    .catch Ljava/lang/NumberFormatException; {:try_start_1f5 .. :try_end_1fd} :catch_326

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_226

    .line 823
    :try_start_203
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_20b
    .catch Ljava/lang/NumberFormatException; {:try_start_203 .. :try_end_20b} :catch_21b

    sub-long/2addr v0, v12

    move-object/from16 v6, v37

    :try_start_20e
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_211
    .catch Ljava/lang/NumberFormatException; {:try_start_20e .. :try_end_211} :catch_212

    .line 823
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v6, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    goto :goto_228

    .line 829
    :catch_212
    move-exception v0

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    goto/16 :goto_32f

    .line 829
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :catch_21b
    move-exception v0

    move-object/from16 v6, v37

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    .line 829
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    goto/16 :goto_32f

    .line 825
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :cond_226
    move-object/from16 v6, v37

    .line 825
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :goto_228
    :try_start_228
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_230
    .catch Ljava/lang/NumberFormatException; {:try_start_228 .. :try_end_230} :catch_31e

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v0, v10

    if-eqz v0, :cond_245

    .line 826
    :try_start_239
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 827
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v12

    .line 826
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_245
    .catch Ljava/lang/NumberFormatException; {:try_start_239 .. :try_end_245} :catch_212

    .line 832
    :cond_245
    nop

    .line 840
    move-object v0, v9

    .line 840
    .end local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_247
    move-object/from16 v1, p0

    invoke-direct {v1, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 842
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 846
    :goto_24f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 847
    .end local v44    # "eventType":I
    .local v7, "eventType":I
    const/4 v10, 0x4

    if-eq v7, v10, :cond_318

    .line 848
    const/4 v14, 0x2

    if-ne v7, v14, :cond_303

    const-string v9, "extras"

    .line 849
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26d

    .line 850
    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    goto/16 :goto_309

    .line 856
    :cond_26d
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v11

    .line 857
    .local v11, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v6, v11}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 858
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 861
    const-string v9, "android"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b2

    if-eqz v11, :cond_2b2

    const-string v9, "SyncManagerJob"

    .line 863
    const/4 v15, 0x0

    invoke-virtual {v11, v9, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2b2

    .line 864
    const-string/jumbo v9, "owningPackage"

    invoke-virtual {v11, v9, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 865
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v9

    if-eqz v9, :cond_2b2

    .line 866
    const-string v9, "JobStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\'"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_2b2
    move-object v10, v8

    .line 872
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .local v10, "sourcePackageName":Ljava/lang/String;
    const-class v8, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/server/job/JobSchedulerInternal;

    .line 873
    .local v9, "service":Lcom/android/server/job/JobSchedulerInternal;
    move/from16 v8, v29

    invoke-static {v10, v8, v12, v13}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v27

    .line 875
    .end local v29    # "sourceUserId":I
    .local v8, "sourceUserId":I
    .local v27, "appBucket":I
    if-eqz v9, :cond_2ca

    invoke-interface {v9}, Lcom/android/server/job/JobSchedulerInternal;->currentHeartbeat()J

    move-result-wide v4

    :goto_2c8
    move-wide v14, v4

    goto :goto_2cb

    :cond_2ca
    goto :goto_2c8

    .line 876
    .local v14, "currentHeartbeat":J
    :goto_2cb
    new-instance v4, Lcom/android/server/job/controllers/JobStatus;

    .line 877
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 879
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 881
    if-eqz p1, :cond_2e6

    const/16 v25, 0x0

    goto :goto_2e8

    :cond_2e6
    move-object/from16 v25, v43

    :goto_2e8
    move/from16 v26, v8

    move-object v8, v4

    .line 881
    .end local v8    # "sourceUserId":I
    .local v26, "sourceUserId":I
    move-object/from16 v28, v9

    move-object v9, v5

    .line 881
    .end local v9    # "service":Lcom/android/server/job/JobSchedulerInternal;
    .local v28, "service":Lcom/android/server/job/JobSchedulerInternal;
    move-object v5, v10

    move-object/from16 v29, v43

    move v10, v3

    .line 881
    .end local v10    # "sourcePackageName":Ljava/lang/String;
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v5, "sourcePackageName":Ljava/lang/String;
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v30, v11

    move-object v11, v5

    .line 881
    .end local v11    # "extras":Landroid/os/PersistableBundle;
    .local v30, "extras":Landroid/os/PersistableBundle;
    move-wide/from16 v31, v12

    move/from16 v12, v26

    .line 881
    .end local v12    # "elapsedNow":J
    .local v31, "elapsedNow":J
    move/from16 v33, v26

    move/from16 v13, v27

    .line 881
    .end local v26    # "sourceUserId":I
    .local v33, "sourceUserId":I
    move/from16 v26, v42

    invoke-direct/range {v8 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V

    .line 882
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v4

    .line 850
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "sourcePackageName":Ljava/lang/String;
    .end local v14    # "currentHeartbeat":J
    .end local v27    # "appBucket":I
    .end local v28    # "service":Lcom/android/server/job/JobSchedulerInternal;
    .end local v30    # "extras":Landroid/os/PersistableBundle;
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .local v8, "sourcePackageName":Ljava/lang/String;
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_303
    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    .line 850
    .end local v12    # "elapsedNow":J
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    :goto_309
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_316

    .line 851
    const-string v4, "JobStore"

    const-string v5, "Error reading extras, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_316
    const/4 v4, 0x0

    return-object v4

    .line 846
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_318
    move/from16 v33, v29

    move/from16 v44, v7

    .line 846
    .end local v12    # "elapsedNow":J
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    goto/16 :goto_24f

    .line 829
    .end local v0    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v7    # "eventType":I
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .local v9, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v44    # "eventType":I
    :catch_31e
    move-exception v0

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v29, v43

    .line 829
    .end local v12    # "elapsedNow":J
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    goto :goto_32f

    .line 829
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_326
    move-exception v0

    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v6, v37

    move-object/from16 v29, v43

    .line 830
    .end local v12    # "elapsedNow":J
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    :goto_32f
    const-string v4, "JobStore"

    const-string v5, "Error reading job execution criteria, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v4, 0x0

    return-object v4

    .line 834
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .restart local v12    # "elapsedNow":J
    .local v29, "sourceUserId":I
    .restart local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_338
    move-wide/from16 v31, v12

    move/from16 v33, v29

    move-object/from16 v6, v37

    move-object/from16 v29, v43

    .line 834
    .end local v12    # "elapsedNow":J
    .end local v37    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v43    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v29, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "elapsedNow":J
    .restart local v33    # "sourceUserId":I
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v0

    if-eqz v0, :cond_360

    .line 835
    const-string v0, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid parameter tag, skipping - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_360
    const/4 v4, 0x0

    return-object v4

    .line 776
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v9    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v29    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v31    # "elapsedNow":J
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .local v5, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .local v7, "uid":I
    .local v11, "eventType":I
    .restart local v13    # "sourceUserId":I
    :catch_362
    move-exception v0

    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v44, v11

    move/from16 v33, v13

    .line 776
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v11    # "eventType":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    .restart local v44    # "eventType":I
    move-object v4, v0

    .line 777
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_379

    .line 778
    const-string v4, "JobStore"

    const-string v5, "Error parsing execution time parameters, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_379
    const/4 v7, 0x0

    return-object v7

    .line 766
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v11    # "eventType":I
    .restart local v13    # "sourceUserId":I
    :cond_37b
    move/from16 v42, v3

    move v3, v7

    move/from16 v44, v11

    move-object v7, v4

    move v7, v3

    move/from16 v3, v42

    .line 766
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v11    # "eventType":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    .restart local v44    # "eventType":I
    goto/16 :goto_b7

    .line 758
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .end local v44    # "eventType":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v11    # "eventType":I
    .restart local v13    # "sourceUserId":I
    :catch_386
    move-exception v0

    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v33, v13

    move-object v7, v4

    .line 758
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    move-object v4, v0

    .line 759
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "JobStore"

    const-string v5, "Error reading constraints, skipping."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-object v7

    .line 754
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v13    # "sourceUserId":I
    :cond_397
    move/from16 v42, v3

    move-object v6, v5

    move v3, v7

    move/from16 v33, v13

    move-object v7, v4

    .line 754
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    :goto_39e
    return-object v7

    .line 743
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v11    # "eventType":I
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .local v3, "internalFlags":I
    .restart local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v7    # "uid":I
    .restart local v13    # "sourceUserId":I
    :cond_39f
    move/from16 v42, v3

    const/4 v4, 0x0

    .line 743
    .end local v5    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "uid":I
    .end local v13    # "sourceUserId":I
    .local v3, "uid":I
    .restart local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v33    # "sourceUserId":I
    .restart local v42    # "internalFlags":I
    goto/16 :goto_91

    .line 737
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v8    # "sourcePackageName":Ljava/lang/String;
    .end local v16    # "sourceTag":Ljava/lang/String;
    .end local v21    # "lastSuccessfulRunTime":J
    .end local v23    # "lastFailedRunTime":J
    .end local v33    # "sourceUserId":I
    .end local v42    # "internalFlags":I
    .local v3, "internalFlags":I
    :catch_3a4
    move-exception v0

    move/from16 v42, v3

    .line 737
    .end local v3    # "internalFlags":I
    .restart local v42    # "internalFlags":I
    goto :goto_3a9

    .line 737
    .end local v42    # "internalFlags":I
    .restart local v3    # "internalFlags":I
    :catch_3a8
    move-exception v0

    .line 738
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3a9
    const-string v4, "JobStore"

    const-string v5, "Error parsing job\'s required fields, skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "numJobs":I
    const/4 v1, 0x0

    .line 599
    .local v1, "numSystemJobs":I
    const/4 v2, 0x0

    move v3, v2

    .line 602
    .local v3, "numSyncJobs":I
    :try_start_4
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;
    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$200(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 603
    .local v4, "fis":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v5, v5, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_13} :catch_80
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_80
    .catchall {:try_start_4 .. :try_end_13} :catchall_7e

    .line 604
    :try_start_13
    iget-boolean v6, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v4, v6}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v6

    .line 605
    .local v6, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v6, :cond_53

    .line 606
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 607
    .local v7, "now":J
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    .line 608
    .local v9, "am":Landroid/app/IActivityManager;
    nop

    .local v2, "i":I
    :goto_26
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_53

    .line 609
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 610
    .local v10, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v10, v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 611
    iput-wide v7, v10, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 612
    iget-object v11, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v11, v10}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 614
    add-int/lit8 v0, v0, 0x1

    .line 615
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_50

    .line 616
    add-int/lit8 v1, v1, 0x1

    .line 617
    # invokes: Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v10}, Lcom/android/server/job/JobStore;->access$100(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 618
    add-int/lit8 v3, v3, 0x1

    .line 608
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 623
    .end local v2    # "i":I
    .end local v7    # "now":J
    .end local v9    # "am":Landroid/app/IActivityManager;
    :cond_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_7b

    move-object v2, v6

    .line 624
    .end local v6    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_55
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_80
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_80
    .catchall {:try_start_55 .. :try_end_58} :catchall_7e

    .line 632
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "fis":Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_ac

    .line 633
    :goto_62
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v0, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 634
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v1, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 635
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v3, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_ac

    .line 623
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v2
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_7e} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_7e} :catch_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7e} :catch_80
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 632
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_7e
    move-exception v2

    goto :goto_c8

    .line 629
    :catch_80
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    :try_start_81
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_7e

    .line 632
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_ac

    goto :goto_62

    .line 625
    :catch_93
    move-exception v2

    .line 626
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_94
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 627
    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_7e

    .line 632
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_a1
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_ac

    goto :goto_62

    .line 638
    :cond_ac
    :goto_ac
    const-string v2, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " jobs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void

    .line 632
    :goto_c8
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_ea

    .line 633
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 634
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 635
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v3, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    :cond_ea
    throw v2
.end method
