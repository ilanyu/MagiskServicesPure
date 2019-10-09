.class public Lcom/android/server/content/MiSyncStrategy;
.super Ljava/lang/Object;
.source "MiSyncStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;,
        Lcom/android/server/content/MiSyncStrategy$OfficialStrategy;,
        Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;
    }
.end annotation


# static fields
.field public static final CLEVER_MJ_STRATEGY:I = 0x1

.field public static final DEFAULT_STRATEGY:I = 0x1

.field public static final OFFICIAL_STRATEGY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Sync"

.field private static final VERSION:I = 0x1

.field private static final XML_ATTR_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final XML_ATTR_STRATEGY:Ljava/lang/String; = "strategy"

.field private static final XML_ATTR_UID:Ljava/lang/String; = "uid"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final XML_FILE_NAME:Ljava/lang/String; = "mi_strategy"

.field public static final XML_FILE_VERSION:I = 0x1

.field private static final XML_TAG_ITEM:Ljava/lang/String; = "sync_strategy_item"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private mStrategy:I

.field private mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/content/MiSyncStrategy;->mStrategy:I

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/MiSyncStrategy;->mCache:Landroid/util/SparseArray;

    .line 49
    iput p1, p0, Lcom/android/server/content/MiSyncStrategy;->mUid:I

    .line 50
    iput-object p2, p0, Lcom/android/server/content/MiSyncStrategy;->mAccountName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private getSyncStrategyInternal(I)Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;
    .registers 5
    .param p1, "strategy"    # I

    .line 141
    iget-object v0, p0, Lcom/android/server/content/MiSyncStrategy;->mCache:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/MiSyncStrategy;->mCache:Landroid/util/SparseArray;

    .line 144
    :cond_b
    iget-object v0, p0, Lcom/android/server/content/MiSyncStrategy;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;

    .line 145
    .local v0, "syncStrategy":Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;
    if-eqz v0, :cond_16

    .line 146
    return-object v0

    .line 148
    :cond_16
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_36

    .line 156
    new-instance v2, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;

    invoke-direct {v2, v1}, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;-><init>(Lcom/android/server/content/MiSyncStrategy$1;)V

    move-object v0, v2

    goto :goto_2f

    .line 153
    :pswitch_21
    new-instance v2, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;

    invoke-direct {v2, v1}, Lcom/android/server/content/MiSyncStrategy$CleverMJStrategy;-><init>(Lcom/android/server/content/MiSyncStrategy$1;)V

    move-object v0, v2

    .line 154
    goto :goto_2f

    .line 150
    :pswitch_28
    new-instance v2, Lcom/android/server/content/MiSyncStrategy$OfficialStrategy;

    invoke-direct {v2, v1}, Lcom/android/server/content/MiSyncStrategy$OfficialStrategy;-><init>(Lcom/android/server/content/MiSyncStrategy$1;)V

    move-object v0, v2

    .line 151
    nop

    .line 159
    :goto_2f
    iget-object v1, p0, Lcom/android/server/content/MiSyncStrategy;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_21
    .end packed-switch
.end method

.method public static readFromXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/content/MiSyncStrategy;
    .registers 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 87
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v1, "sync_strategy_item"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 89
    return-object v2

    .line 92
    :cond_f
    const-string/jumbo v1, "version"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "itemVersionString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 94
    const-string v3, "Sync"

    const-string/jumbo v4, "the version in mi strategy is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v2

    .line 97
    :cond_25
    const/4 v3, 0x0

    .line 99
    .local v3, "itemVersion":I
    :try_start_26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2a} :catch_77

    move v3, v4

    .line 103
    nop

    .line 104
    const/4 v4, 0x1

    if-lt v3, v4, :cond_76

    .line 105
    const-string/jumbo v5, "uid"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "uidString":Ljava/lang/String;
    const-string v6, "account_name"

    invoke-interface {p0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "accountName":Ljava/lang/String;
    const-string/jumbo v7, "strategy"

    invoke-interface {p0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "strategyString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_75

    .line 110
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_75

    .line 111
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_56

    goto :goto_75

    .line 114
    :cond_56
    const/4 v8, 0x0

    .line 115
    .local v8, "uid":I
    nop

    .line 117
    .local v4, "strategy":I
    :try_start_58
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_61} :catch_6c

    move v2, v9

    .line 122
    .end local v4    # "strategy":I
    .local v2, "strategy":I
    nop

    .line 123
    new-instance v4, Lcom/android/server/content/MiSyncStrategy;

    invoke-direct {v4, v8, v6}, Lcom/android/server/content/MiSyncStrategy;-><init>(ILjava/lang/String;)V

    .line 124
    .local v4, "miSyncStrategy":Lcom/android/server/content/MiSyncStrategy;
    invoke-virtual {v4, v2}, Lcom/android/server/content/MiSyncStrategy;->setStrategy(I)Z

    .line 125
    return-object v4

    .line 119
    .end local v2    # "strategy":I
    .local v4, "strategy":I
    :catch_6c
    move-exception v9

    .line 120
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v10, "Sync"

    const-string v11, "error parsing item for mi strategy"

    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    return-object v2

    .line 112
    .end local v4    # "strategy":I
    .end local v8    # "uid":I
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_75
    :goto_75
    return-object v2

    .line 127
    .end local v5    # "uidString":Ljava/lang/String;
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v7    # "strategyString":Ljava/lang/String;
    :cond_76
    return-object v2

    .line 100
    :catch_77
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Sync"

    const-string v6, "error parsing version for mi strategy"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-object v2
.end method


# virtual methods
.method public apply(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;Landroid/app/job/JobInfo$Builder;)V
    .registers 5
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "builder"    # Landroid/app/job/JobInfo$Builder;

    .line 131
    iget v0, p0, Lcom/android/server/content/MiSyncStrategy;->mStrategy:I

    invoke-direct {p0, v0}, Lcom/android/server/content/MiSyncStrategy;->getSyncStrategyInternal(I)Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;->apply(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;Landroid/app/job/JobInfo$Builder;)V

    .line 132
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/content/MiSyncStrategy;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/server/content/MiSyncStrategy;->mStrategy:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/android/server/content/MiSyncStrategy;->mUid:I

    return v0
.end method

.method public isAllowedToRun(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 135
    iget v0, p0, Lcom/android/server/content/MiSyncStrategy;->mStrategy:I

    invoke-direct {p0, v0}, Lcom/android/server/content/MiSyncStrategy;->getSyncStrategyInternal(I)Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;->isAllowedToRun(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setStrategy(I)Z
    .registers 4
    .param p1, "strategy"    # I

    .line 62
    const/4 v0, 0x1

    if-eqz p1, :cond_18

    if-ne p1, v0, :cond_6

    goto :goto_18

    .line 67
    :cond_6
    const-string v0, "Sync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 68
    const-string v0, "Sync"

    const-string v1, "Illegal strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_18
    :goto_18
    iput p1, p0, Lcom/android/server/content/MiSyncStrategy;->mStrategy:I

    .line 65
    return v0
.end method

.method public writeToXML(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string/jumbo v0, "sync_strategy_item"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string/jumbo v0, "uid"

    iget v2, p0, Lcom/android/server/content/MiSyncStrategy;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string v0, "account_name"

    iget-object v2, p0, Lcom/android/server/content/MiSyncStrategy;->mAccountName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const-string/jumbo v0, "strategy"

    iget v2, p0, Lcom/android/server/content/MiSyncStrategy;->mStrategy:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string/jumbo v0, "sync_strategy_item"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    return-void
.end method
