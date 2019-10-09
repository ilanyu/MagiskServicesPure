.class Lcom/android/server/TextServicesManagerService$TextServicesData;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesData"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateCount:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    .line 102
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 106
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 108
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 91
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 91
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 91
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/TextServicesManagerService$TextServicesData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 91
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$TextServicesData;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 91
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->initializeTextServicesData()V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "spellCheckerIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v1, "  Spell Checkers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Spell Checkers: mUpdateCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerInfo;

    .line 225
    .local v2, "info":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Spell Checker #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Landroid/view/textservice/SpellCheckerInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    .end local v2    # "info":Landroid/view/textservice/SpellCheckerInfo;
    goto :goto_3c

    .line 230
    :cond_64
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v1, "  Spell Checker Bind Groups:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 234
    .local v1, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 235
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 236
    .local v4, "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mInternalConnection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mSpellChecker="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$200(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mUnbindCalled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$300(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      mConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$400(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$500(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 242
    .local v5, "numPendingSessionRequests":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "j":I
    :goto_11b
    if-ge v7, v5, :cond_18f

    .line 243
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$500(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 244
    .local v8, "req":Lcom/android/server/TextServicesManagerService$SessionRequest;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      Pending Request #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        mTsListener="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        mScListener="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        mScLocale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " mUid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/server/TextServicesManagerService$SessionRequest;->mUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    .end local v8    # "req":Lcom/android/server/TextServicesManagerService$SessionRequest;
    add-int/lit8 v7, v7, 0x1

    goto :goto_11b

    .line 250
    .end local v7    # "j":I
    :cond_18f
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$600(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 251
    .local v7, "numOnGoingSessionRequests":I
    move v8, v6

    .local v8, "j":I
    :goto_198
    if-ge v8, v7, :cond_20e

    .line 252
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$600(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 253
    .local v9, "req":Lcom/android/server/TextServicesManagerService$SessionRequest;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      On going Request #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v8, v8, 0x1

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "        mTsListener="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "        mScListener="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "        mScLocale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " mUid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/server/TextServicesManagerService$SessionRequest;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    .end local v9    # "req":Lcom/android/server/TextServicesManagerService$SessionRequest;
    add-int/lit8 v8, v8, 0x1

    goto :goto_198

    .line 260
    .end local v8    # "j":I
    :cond_20e
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v8

    .line 261
    .local v8, "N":I
    nop

    .local v6, "j":I
    :goto_217
    if-ge v6, v8, :cond_268

    .line 262
    nop

    .line 263
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 264
    .local v9, "mScListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      Listener #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "        mScListener="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "        mGroup="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    .end local v9    # "mScListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_217

    .line 268
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v5    # "numPendingSessionRequests":I
    .end local v6    # "j":I
    .end local v7    # "numOnGoingSessionRequests":I
    .end local v8    # "N":I
    :cond_268
    goto/16 :goto_78

    .line 269
    :cond_26a
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 126
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getSelectedSpellChecker()Ljava/lang/String;
    .registers 3

    .line 143
    const-string/jumbo v0, "selected_spell_checker"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_d

    :cond_c
    move-object v1, p2

    :goto_d
    return-object v1
.end method

.method private initializeTextServicesData()V
    .registers 12

    .line 176
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 178
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    .line 179
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 183
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.textservice.SpellCheckerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 187
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v2, :cond_dc

    .line 188
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 189
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 190
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v6, "compName":Landroid/content/ComponentName;
    const-string v7, "android.permission.BIND_TEXT_SERVICE"

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 192
    # getter for: Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping text service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.BIND_TEXT_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto :goto_d8

    .line 199
    :cond_6a
    :try_start_6a
    new-instance v7, Landroid/view/textservice/SpellCheckerInfo;

    iget-object v8, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 200
    .local v7, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    if-gtz v8, :cond_95

    .line 201
    # getter for: Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping text service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": it does not contain subtypes."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    goto :goto_d8

    .line 205
    :cond_95
    iget-object v8, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v8, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_a3} :catch_be
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_a3} :catch_a4

    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    goto :goto_d7

    .line 209
    :catch_a4
    move-exception v7

    .line 210
    .local v7, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load the spell checker "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "compName":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_d8

    .line 207
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "compName":Landroid/content/ComponentName;
    :catch_be
    move-exception v7

    .line 208
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    # getter for: Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load the spell checker "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "compName":Landroid/content/ComponentName;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_d7
    nop

    .line 187
    :goto_d8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2a

    .line 217
    .end local v3    # "i":I
    :cond_dc
    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 122
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 123
    return-void
.end method

.method private putSelectedSpellChecker(Ljava/lang/String;)V
    .registers 3
    .param p1, "sciId"    # Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "selected_spell_checker"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private putSelectedSpellCheckerSubtype(I)V
    .registers 3
    .param p1, "hashCode"    # I

    .line 138
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->putInt(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 112
    return-void
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 156
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getSelectedSpellChecker()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "curSpellCheckerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 158
    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_c
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    return-object v1
.end method

.method public getSelectedSpellCheckerSubtype(I)I
    .registers 3
    .param p1, "defaultValue"    # I

    .line 147
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    .line 151
    const-string/jumbo v0, "spell_checker_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .registers 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .line 164
    if-eqz p1, :cond_a

    .line 165
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->putSelectedSpellChecker(Ljava/lang/String;)V

    goto :goto_f

    .line 167
    :cond_a
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->putSelectedSpellChecker(Ljava/lang/String;)V

    .line 169
    :goto_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->putSelectedSpellCheckerSubtype(I)V

    .line 170
    return-void
.end method
