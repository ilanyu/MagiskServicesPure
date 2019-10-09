.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/IntentFirewall$AMSInterface;,
        Lcom/android/server/firewall/IntentFirewall$RuleObserver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallHandler;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;,
        Lcom/android/server/firewall/IntentFirewall$Rule;
    }
.end annotation


# static fields
.field private static final LOG_PACKAGES_MAX_LENGTH:I = 0x96

.field private static final LOG_PACKAGES_SUFFICIENT_LENGTH:I = 0x7d

.field private static final RULES_DIR:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "IntentFirewall"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TAG_RULES:Ljava/lang/String; = "rules"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TYPE_ACTIVITY:I = 0x0

.field private static final TYPE_BROADCAST:I = 0x1

.field private static final TYPE_SERVICE:I = 0x2

.field private static final factoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/firewall/FilterFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field private final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field private mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field final mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

.field private final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field private mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "ifw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 80
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/server/firewall/FilterFactory;

    sget-object v1, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0x8

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0x9

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0xa

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0xb

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    const/16 v5, 0xc

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0xd

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0xe

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0xf

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0x10

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    const/16 v5, 0x11

    aput-object v1, v0, v5

    .line 104
    .local v0, "factories":[Lcom/android/server/firewall/FilterFactory;
    new-instance v1, Ljava/util/HashMap;

    array-length v5, v0

    mul-int/2addr v5, v4

    div-int/2addr v5, v3

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    .line 105
    nop

    .local v2, "i":I
    :goto_80
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_92

    .line 106
    aget-object v2, v0, v1

    .line 107
    .local v2, "factory":Lcom/android/server/firewall/FilterFactory;
    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v2    # "factory":Lcom/android/server/firewall/FilterFactory;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_80

    .line 109
    .end local v0    # "factories":[Lcom/android/server/firewall/FilterFactory;
    .end local v2    # "i":I
    :cond_92
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V
    .registers 5
    .param p1, "ams"    # Lcom/android/server/firewall/IntentFirewall$AMSInterface;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 76
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 77
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 112
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    .line 113
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;-><init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    .line 114
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object v0

    .line 115
    .local v0, "rulesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-direct {p0, v0}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    .line 119
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    .line 120
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-virtual {v1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->startWatching()V

    .line 121
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/firewall/IntentFirewall;
    .param p1, "x1"    # Ljava/io/File;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    return-void
.end method

.method public static getRulesDir()Ljava/io/File;
    .registers 1

    .line 254
    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    return-object v0
.end method

.method private static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "packages"    # [Ljava/lang/String;

    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, "first":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "first":Z
    :goto_9
    array-length v4, p0

    const/16 v5, 0x96

    if-ge v0, v4, :cond_3a

    .line 229
    aget-object v4, p0, v0

    .line 233
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v5, :cond_2a

    .line 234
    if-nez v3, :cond_25

    .line 235
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 237
    :cond_25
    const/4 v3, 0x0

    .line 239
    :goto_26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 240
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x7d

    if-lt v5, v6, :cond_37

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 244
    .end local v0    # "i":I
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_62

    array-length v0, p0

    if-lez v0, :cond_62

    .line 245
    aget-object v0, p0, v2

    .line 248
    .local v0, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 250
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_62
    const/4 v0, 0x0

    return-object v0
.end method

.method private static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .registers 19
    .param p0, "intentType"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 188
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 189
    .local v0, "shortComponent":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 190
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .end local v0    # "shortComponent":Ljava/lang/String;
    .local v11, "shortComponent":Ljava/lang/String;
    :cond_b
    move-object v11, v0

    const/4 v2, 0x0

    .line 194
    .local v2, "callerPackages":Ljava/lang/String;
    const/4 v3, 0x0

    .line 195
    .local v3, "callerPackageCount":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 196
    .local v12, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v12, :cond_2d

    .line 198
    move/from16 v13, p2

    :try_start_16
    invoke-interface {v12, v13}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "callerPackagesArray":[Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 200
    array-length v4, v0

    move v3, v4

    .line 201
    invoke-static {v0}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_24

    move-object v2, v4

    .line 205
    .end local v0    # "callerPackagesArray":[Ljava/lang/String;
    :cond_23
    goto :goto_2f

    .line 203
    :catch_24
    move-exception v0

    .line 204
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "IntentFirewall"

    const-string v5, "Remote exception while retrieving packages"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_2f

    .line 208
    :cond_2d
    move/from16 v13, p2

    .end local v2    # "callerPackages":Ljava/lang/String;
    .end local v3    # "callerPackageCount":I
    .local v0, "callerPackageCount":I
    .local v14, "callerPackages":Ljava/lang/String;
    :goto_2f
    move-object v14, v2

    move v0, v3

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 208
    move v2, p0

    move-object v3, v11

    move v4, v13

    move v5, v0

    move-object v6, v14

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v10}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "elementName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    .line 389
    .local v1, "factory":Lcom/android/server/firewall/FilterFactory;
    if-eqz v1, :cond_13

    .line 392
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v2

    return-object v2

    .line 390
    :cond_13
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element in filter list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .registers 18
    .param p1, "rulesFile"    # Ljava/io/File;
    .param p2, "resolvers"    # [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    move-object/from16 v1, p1

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 303
    .local v3, "rulesByType":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;>;"
    const/4 v4, 0x0

    move v0, v4

    .line 303
    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_18

    .line 304
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 309
    .end local v0    # "i":I
    :cond_18
    :try_start_18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_180

    move-object v2, v0

    .line 313
    .local v2, "fis":Ljava/io/FileInputStream;
    nop

    .line 312
    nop

    .line 316
    :try_start_20
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v5, v0

    .line 318
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v0, "rules"

    invoke-static {v5, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 322
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 322
    .local v0, "outerDepth":I
    :goto_33
    move v7, v0

    .line 323
    .end local v0    # "outerDepth":I
    .local v7, "outerDepth":I
    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 324
    const/4 v0, -0x1

    .line 326
    .local v0, "ruleType":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "activity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 328
    const/4 v0, 0x0

    .line 335
    .end local v0    # "ruleType":I
    .local v9, "ruleType":I
    :cond_48
    :goto_48
    move v9, v0

    goto :goto_5f

    .line 329
    .end local v9    # "ruleType":I
    .restart local v0    # "ruleType":I
    :cond_4a
    const-string v9, "broadcast"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 330
    const/4 v0, 0x1

    goto :goto_48

    .line 331
    :cond_54
    const-string/jumbo v9, "service"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 332
    const/4 v0, 0x2

    goto :goto_48

    .line 335
    .end local v0    # "ruleType":I
    .restart local v9    # "ruleType":I
    :goto_5f
    const/4 v0, -0x1

    if-eq v9, v0, :cond_90

    .line 336
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-direct {v0, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    move-object v10, v0

    .line 338
    .local v10, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_6e} :catch_12d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_6e} :catch_f8
    .catchall {:try_start_20 .. :try_end_6e} :catchall_f5

    move-object v11, v0

    .line 343
    .local v11, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :try_start_6f
    invoke-virtual {v10, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_72} :catch_77
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_f8
    .catchall {:try_start_6f .. :try_end_72} :catchall_f5

    .line 347
    nop

    .line 349
    :try_start_73
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "ruleType":I
    .end local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v11    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    goto :goto_90

    .line 344
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "ruleType":I
    .restart local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .restart local v11    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :catch_77
    move-exception v0

    move-object v12, v0

    .line 345
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "IntentFirewall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading an intent firewall rule from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_8f} :catch_12d
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8f} :catch_f8
    .catchall {:try_start_73 .. :try_end_8f} :catchall_f5

    .line 346
    goto :goto_91

    .line 351
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "ruleType":I
    .end local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v11    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :cond_90
    :goto_90
    nop

    .line 322
    :goto_91
    move v0, v7

    goto :goto_33

    .line 362
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "outerDepth":I
    :cond_93
    :try_start_93
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    .line 365
    goto :goto_b0

    .line 363
    :catch_97
    move-exception v0

    move-object v5, v0

    .line 364
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "IntentFirewall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v0    # "ex":Ljava/io/IOException;
    nop

    .line 368
    :goto_b0
    move v0, v4

    .line 368
    .local v0, "ruleType":I
    :goto_b1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_f4

    .line 369
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 370
    .local v5, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    aget-object v7, p2, v0

    .line 372
    .local v7, "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    move v8, v4

    .line 372
    .local v8, "ruleIndex":I
    :goto_c0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_f1

    .line 373
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 374
    .local v9, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    move v10, v4

    .line 374
    .local v10, "i":I
    :goto_cd
    invoke-virtual {v9}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    move-result v11

    if-ge v10, v11, :cond_dd

    .line 375
    invoke-virtual {v9, v10}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 374
    add-int/lit8 v10, v10, 0x1

    goto :goto_cd

    .line 377
    .end local v10    # "i":I
    :cond_dd
    move v10, v4

    .line 377
    .restart local v10    # "i":I
    :goto_de
    invoke-virtual {v9}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilterCount()I

    move-result v11

    if-ge v10, v11, :cond_ee

    .line 378
    invoke-virtual {v9, v10}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilter(I)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v7, v11, v9}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    .line 377
    add-int/lit8 v10, v10, 0x1

    goto :goto_de

    .line 372
    .end local v9    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v10    # "i":I
    :cond_ee
    add-int/lit8 v8, v8, 0x1

    goto :goto_c0

    .line 368
    .end local v5    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    .end local v7    # "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .end local v8    # "ruleIndex":I
    :cond_f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 382
    .end local v0    # "ruleType":I
    :cond_f4
    return-void

    .line 361
    :catchall_f5
    move-exception v0

    move-object v4, v0

    goto :goto_162

    .line 357
    :catch_f8
    move-exception v0

    move-object v4, v0

    .line 358
    .local v4, "ex":Ljava/io/IOException;
    :try_start_fa
    const-string v0, "IntentFirewall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading intent firewall rules from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_110
    .catchall {:try_start_fa .. :try_end_110} :catchall_f5

    .line 362
    :try_start_110
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_114

    .line 365
    goto :goto_12c

    .line 363
    :catch_114
    move-exception v0

    move-object v5, v0

    .line 364
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "IntentFirewall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_12c
    return-void

    .line 352
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_12d
    move-exception v0

    move-object v4, v0

    .line 355
    .local v4, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_12f
    const-string v0, "IntentFirewall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading intent firewall rules from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_145
    .catchall {:try_start_12f .. :try_end_145} :catchall_f5

    .line 362
    :try_start_145
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_149

    .line 365
    goto :goto_161

    .line 363
    :catch_149
    move-exception v0

    move-object v5, v0

    .line 364
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v5, "IntentFirewall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_161
    return-void

    .line 361
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_162
    nop

    .line 362
    :try_start_163
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_167

    .line 365
    goto :goto_17f

    .line 363
    :catch_167
    move-exception v0

    move-object v5, v0

    .line 364
    .restart local v0    # "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while closing "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "IntentFirewall"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_17f
    throw v4

    .line 310
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_180
    move-exception v0

    .line 312
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private readRulesDir(Ljava/io/File;)V
    .registers 10
    .param p1, "rulesDir"    # Ljava/io/File;

    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 269
    .local v0, "resolvers":[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 270
    new-instance v3, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    aput-object v3, v0, v2

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 273
    .end local v2    # "i":I
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 274
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_31

    .line 275
    move v3, v1

    .local v3, "i":I
    :goto_1a
    array-length v4, v2

    if-ge v3, v4, :cond_31

    .line 276
    aget-object v4, v2, v3

    .line 278
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 279
    invoke-direct {p0, v4, v0}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    .line 275
    .end local v4    # "file":Ljava/io/File;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 284
    .end local v3    # "i":I
    :cond_31
    const-string v3, "IntentFirewall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read new rules (A:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " B:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v6, v0, v5

    .line 285
    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " S:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-object v7, v0, v6

    .line 286
    invoke-virtual {v7}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v3, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {v3}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 289
    :try_start_83
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 290
    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 291
    aget-object v1, v0, v6

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    .line 292
    monitor-exit v3

    .line 293
    return-void

    .line 292
    :catchall_91
    move-exception v1

    monitor-exit v3
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_91

    throw v1
.end method


# virtual methods
.method public checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "receivingUid"    # I

    .line 141
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)Z
    .registers 12
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "exported"    # Z

    .line 598
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .registers 26
    .param p1, "resolver"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intentType"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "callerUid"    # I
    .param p6, "callerPid"    # I
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "receivingUid"    # I

    move-object/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "log":Z
    const/4 v2, 0x0

    .line 154
    .local v2, "block":Z
    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v11, v11}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    if-nez v3, :cond_15

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 158
    .end local v3    # "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    .local v12, "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :cond_15
    move-object v12, v3

    move-object/from16 v13, p2

    invoke-virtual {v0, v13, v12}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 162
    move v15, v1

    move v14, v2

    move v1, v11

    .end local v2    # "block":Z
    .local v1, "i":I
    .local v14, "block":Z
    .local v15, "log":Z
    :goto_1e
    move v8, v1

    .end local v1    # "i":I
    .local v8, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_54

    .line 163
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 164
    .local v7, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v9

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v11, v7

    move-object v7, v10

    .end local v7    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .local v11, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    move/from16 v16, v8

    move/from16 v8, p8

    .end local v8    # "i":I
    .local v16, "i":I
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/firewall/IntentFirewall$Rule;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 166
    invoke-virtual {v11}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    move-result v1

    or-int/2addr v14, v1

    .line 167
    invoke-virtual {v11}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    move-result v1

    or-int/2addr v15, v1

    .line 171
    if-eqz v14, :cond_50

    if-eqz v15, :cond_50

    .line 172
    goto :goto_54

    .line 162
    .end local v11    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    :cond_50
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    const/4 v11, 0x0

    goto :goto_1e

    .line 177
    .end local v1    # "i":I
    :cond_54
    :goto_54
    if-eqz v15, :cond_5e

    .line 178
    move/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v1, v9, v2, v10}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    goto :goto_62

    .line 181
    :cond_5e
    move/from16 v1, p3

    move/from16 v2, p5

    :goto_62
    if-nez v14, :cond_66

    const/4 v11, 0x1

    goto :goto_67

    :cond_66
    const/4 v11, 0x0

    :goto_67
    return v11
.end method

.method public checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 16
    .param p1, "resolvedService"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .line 135
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    iget v8, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .line 129
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget v8, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method signaturesMatch(II)Z
    .registers 7
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 604
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 605
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_e

    if-nez v2, :cond_d

    const/4 v0, 0x1

    nop

    :cond_d
    return v0

    .line 606
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_e
    move-exception v1

    .line 607
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "IntentFirewall"

    const-string v3, "Remote exception while checking signatures"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    return v0
.end method
