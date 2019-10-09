.class public Lcom/android/server/content/MiSyncPause;
.super Ljava/lang/Object;
.source "MiSyncPause.java"


# static fields
.field private static final PAUSE_TIME_MAX_INTERVAL:J = 0x5265c00L

.field private static final PAUSE_TIME_START_DELTA:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "Sync"

.field private static final VERSION:I = 0x1

.field private static final XML_ATTR_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final XML_ATTR_PAUSE_END_TIME:Ljava/lang/String; = "end_time"

.field private static final XML_ATTR_UID:Ljava/lang/String; = "uid"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final XML_FILE_NAME:Ljava/lang/String; = "mi_pause"

.field public static final XML_FILE_VERSION:I = 0x1

.field private static final XML_TAG_ITEM:Ljava/lang/String; = "sync_pause_item"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mPauseEndTimeMills:J

.field private mPauseStartTimeMills:J

.field private mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/MiSyncPause;->mPauseStartTimeMills:J

    .line 44
    iput-wide v0, p0, Lcom/android/server/content/MiSyncPause;->mPauseEndTimeMills:J

    .line 47
    iput p1, p0, Lcom/android/server/content/MiSyncPause;->mUid:I

    .line 48
    iput-object p2, p0, Lcom/android/server/content/MiSyncPause;->mAccountName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static readFromXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/content/MiSyncPause;
    .registers 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 109
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v1, "sync_pause_item"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 111
    return-object v2

    .line 113
    :cond_f
    const-string/jumbo v1, "version"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "itemVersionString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 115
    const-string v3, "Sync"

    const-string/jumbo v4, "the version in mi pause is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v2

    .line 118
    :cond_25
    const/4 v3, 0x0

    .line 120
    .local v3, "itemVersion":I
    :try_start_26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2a} :catch_7f

    move v3, v4

    .line 124
    nop

    .line 125
    const/4 v4, 0x1

    if-lt v3, v4, :cond_7e

    .line 126
    const-string/jumbo v4, "uid"

    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "uidString":Ljava/lang/String;
    const-string v5, "account_name"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "accountName":Ljava/lang/String;
    const-string v6, "end_time"

    invoke-interface {p0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "pauseEndTimeMillsString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 131
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 132
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_55

    goto :goto_75

    .line 137
    :cond_55
    const/4 v7, 0x0

    .line 138
    .local v7, "uid":I
    const-wide/16 v8, 0x0

    .line 140
    .local v8, "pauseEndTimeMills":J
    :try_start_58
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    .line 141
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_61} :catch_6c

    move-wide v8, v10

    .line 145
    nop

    .line 146
    new-instance v2, Lcom/android/server/content/MiSyncPause;

    invoke-direct {v2, v7, v5}, Lcom/android/server/content/MiSyncPause;-><init>(ILjava/lang/String;)V

    .line 147
    .local v2, "miSyncPause":Lcom/android/server/content/MiSyncPause;
    invoke-virtual {v2, v8, v9}, Lcom/android/server/content/MiSyncPause;->setPauseToTime(J)Z

    .line 148
    return-object v2

    .line 142
    .end local v2    # "miSyncPause":Lcom/android/server/content/MiSyncPause;
    :catch_6c
    move-exception v10

    .line 143
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string v11, "Sync"

    const-string v12, "error parsing item for mi pause"

    invoke-static {v11, v12, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    return-object v2

    .line 133
    .end local v7    # "uid":I
    .end local v8    # "pauseEndTimeMills":J
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_75
    :goto_75
    const-string v7, "Sync"

    const-string/jumbo v8, "the item in mi pause is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v2

    .line 150
    .end local v4    # "uidString":Ljava/lang/String;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v6    # "pauseEndTimeMillsString":Ljava/lang/String;
    :cond_7e
    return-object v2

    .line 121
    :catch_7f
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Sync"

    const-string v6, "error parsing version for mi pause"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return-object v2
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/content/MiSyncPause;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseEndTime()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/android/server/content/MiSyncPause;->mPauseEndTimeMills:J

    return-wide v0
.end method

.method public getResumeTimeLeft()J
    .registers 8

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    .local v0, "currentTimeMills":J
    iget-wide v2, p0, Lcom/android/server/content/MiSyncPause;->mPauseStartTimeMills:J

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_11

    .line 66
    return-wide v3

    .line 68
    :cond_11
    iget-wide v5, p0, Lcom/android/server/content/MiSyncPause;->mPauseEndTimeMills:J

    cmp-long v2, v5, v0

    if-gtz v2, :cond_18

    .line 69
    return-wide v3

    .line 71
    :cond_18
    iget-wide v2, p0, Lcom/android/server/content/MiSyncPause;->mPauseEndTimeMills:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public getUid()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/server/content/MiSyncPause;->mUid:I

    return v0
.end method

.method public setPauseToTime(J)Z
    .registers 12
    .param p1, "pauseTimeMillis"    # J

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v2, :cond_1c

    .line 78
    const-string v2, "Sync"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 79
    const-string v2, "Sync"

    const-string v4, "Resume syncs"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_17
    iput-wide v0, p0, Lcom/android/server/content/MiSyncPause;->mPauseStartTimeMills:J

    .line 82
    iput-wide v0, p0, Lcom/android/server/content/MiSyncPause;->mPauseEndTimeMills:J

    .line 83
    return v3

    .line 86
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    .local v0, "currentTimeMillis":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_33

    sub-long v5, p1, v0

    const-wide/32 v7, 0x5265c00

    cmp-long v2, v5, v7

    if-lez v2, :cond_2e

    goto :goto_33

    .line 94
    :cond_2e
    iput-wide v0, p0, Lcom/android/server/content/MiSyncPause;->mPauseStartTimeMills:J

    .line 95
    iput-wide p1, p0, Lcom/android/server/content/MiSyncPause;->mPauseEndTimeMills:J

    .line 96
    return v3

    .line 89
    :cond_33
    :goto_33
    const-string v2, "Sync"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 90
    const-string v2, "Sync"

    const-string v3, "Illegal time"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_42
    const/4 v2, 0x0

    return v2
.end method

.method public writeToXML(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const-string/jumbo v0, "sync_pause_item"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string/jumbo v0, "uid"

    iget v2, p0, Lcom/android/server/content/MiSyncPause;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string v0, "account_name"

    iget-object v2, p0, Lcom/android/server/content/MiSyncPause;->mAccountName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v0, "end_time"

    iget-wide v2, p0, Lcom/android/server/content/MiSyncPause;->mPauseEndTimeMills:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string/jumbo v0, "sync_pause_item"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    return-void
.end method
