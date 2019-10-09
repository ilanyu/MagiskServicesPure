.class final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerSettings$BadKeyException;,
        Lcom/android/server/om/OverlayManagerSettings$SettingsItem;,
        Lcom/android/server/om/OverlayManagerSettings$Serializer;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$bXuJGR0fITXNwGnQfQHv9KS-XgY()Landroid/util/ArrayMap;
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForTarget$0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "i"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 185
    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isStatic()Z
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "android"

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method static synthetic lambda$getOverlaysForTarget$1(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForUser$2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "i"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 194
    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isStatic()Z
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "android"

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method static synthetic lambda$getOverlaysForUser$3(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 195
    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForUser$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/content/om/OverlayInfo;

    .line 196
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getUsers$5(Ljava/lang/Object;)I
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 201
    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectWhereTarget$7(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 568
    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectWhereUser$6(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "item"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 562
    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private select(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 551
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_25

    .line 553
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 554
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p2, :cond_22

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 555
    return v1

    .line 552
    .end local v2    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 558
    .end local v1    # "i":I
    :cond_25
    const/4 v1, -0x1

    return v1
.end method

.method private selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/stream/Stream<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .line 567
    invoke-direct {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$mq-CHAn1jQBVquxuOUv0eQANHIY;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$mq-CHAn1jQBVquxuOUv0eQANHIY;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 567
    return-object v0
.end method

.method private selectWhereUser(I)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bX7CTrJVR3B_eQmD43OOHtRIxgw;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bX7CTrJVR3B_eQmD43OOHtRIxgw;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "p"    # Ljava/io/PrintWriter;

    .line 290
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 291
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 294
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 295
    const-string v1, "<none>"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 296
    return-void

    .line 299
    :cond_1d
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 300
    .local v1, "N":I
    const/4 v2, 0x0

    .line 300
    .local v2, "i":I
    :goto_24
    if-ge v2, v1, :cond_db

    .line 301
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 302
    .local v3, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 305
    const-string/jumbo v4, "mPackageName.......: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v4, "mUserId............: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 307
    const-string/jumbo v4, "mTargetPackageName.: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v4, "mBaseCodePath......: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v4, "mState.............: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-static {v4}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v4, "mIsEnabled.........: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 311
    const-string/jumbo v4, "mIsStatic..........: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isStatic()Z
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 312
    const-string/jumbo v4, "mPriority..........: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 313
    const-string/jumbo v4, "mCategory..........: "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 316
    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 300
    .end local v3    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_24

    .line 318
    .end local v2    # "i":I
    :cond_db
    return-void
.end method

.method getEnabled(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 144
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    return v1

    .line 142
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 115
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    return-object v1

    .line 113
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$ATr0DZmWpSWdKD0COw4t2qS-DRk;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$ATr0DZmWpSWdKD0COw4t2qS-DRk;

    .line 185
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;

    .line 186
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 187
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 184
    return-object v0
.end method

.method getOverlaysForUser(I)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;

    .line 194
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$jZUujzDxrP0hpAqUxnqEf-b-nQc;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$jZUujzDxrP0hpAqUxnqEf-b-nQc;

    .line 195
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;

    sget-object v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;

    .line 197
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 196
    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 193
    return-object v0
.end method

.method getState(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 165
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    return v1

    .line 163
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method getUsers()[I
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;
    .param p5, "isStatic"    # Z
    .param p6, "priority"    # I
    .param p7, "overlayCategory"    # Ljava/lang/String;

    move-object v0, p0

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 71
    new-instance v9, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 74
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-eqz p5, :cond_57

    .line 76
    const/4 v3, 0x1

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z
    invoke-static {v1, v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    .line 79
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_20
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    if-ltz v3, :cond_3f

    .line 80
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 81
    .local v4, "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v5

    if-eqz v5, :cond_3a

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v5

    move/from16 v6, p6

    if-gt v5, v6, :cond_3c

    .line 82
    goto :goto_41

    .line 79
    .end local v4    # "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_3a
    move/from16 v6, p6

    :cond_3c
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    goto :goto_20

    .line 85
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_3f
    move/from16 v6, p6

    :goto_41
    add-int/lit8 v4, v3, 0x1

    .line 86
    .local v4, "pos":I
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_51

    .line 87
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 89
    :cond_51
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    .end local v3    # "i":I
    .end local v4    # "pos":I
    :goto_56
    goto :goto_5e

    .line 92
    :cond_57
    move/from16 v6, p6

    iget-object v3, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_5e
    return-void
.end method

.method persist(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    .line 326
    return-void
.end method

.method remove(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "idx":I
    if-gez v0, :cond_8

    .line 102
    const/4 v1, 0x0

    return v1

    .line 105
    :cond_8
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    const/4 v1, 0x1

    return v1
.end method

.method removeUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "removed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 210
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 211
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p1, :cond_20

    .line 216
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    const/4 v0, 0x1

    .line 218
    add-int/lit8 v1, v1, -0x1

    .line 209
    .end local v2    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 221
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method restore(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    .line 322
    return-void
.end method

.method setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 127
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)Z
    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 125
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method setCategory(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 136
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setCategory(Ljava/lang/String;)Z
    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 134
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method setEnabled(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 156
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z
    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    move-result v1

    return v1

    .line 154
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 279
    .local v0, "idx":I
    if-ltz v0, :cond_24

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_11

    goto :goto_24

    .line 283
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 284
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    return v2

    .line 280
    .end local v1    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_24
    :goto_24
    const/4 v1, 0x0

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "idx":I
    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 263
    return v1

    .line 266
    :cond_8
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 267
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 268
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 230
    return v1

    .line 232
    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 233
    .local v0, "moveIdx":I
    if-gez v0, :cond_f

    .line 234
    return v1

    .line 237
    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v2

    .line 238
    .local v2, "parentIdx":I
    if-gez v2, :cond_16

    .line 239
    return v1

    .line 242
    :cond_16
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 245
    .local v3, "itemToMove":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 247
    return v1

    .line 250
    :cond_35
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 252
    .local v4, "newParentIdx":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 253
    if-eq v0, v4, :cond_49

    move v1, v5

    nop

    :cond_49
    return v1
.end method

.method setState(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 177
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    # invokes: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)Z
    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z

    move-result v1

    return v1

    .line 175
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
