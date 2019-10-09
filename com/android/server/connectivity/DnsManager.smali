.class public Lcom/android/server/connectivity/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;,
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;,
        Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    }
.end annotation


# static fields
.field private static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field private static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field private static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field private static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field private static final PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mMaxSamples:I

.field private mMinSamples:I

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private mNumDnsEntries:I

.field private final mPrivateDnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateDnsMode:Ljava/lang/String;

.field private mPrivateDnsSpecifier:Ljava/lang/String;

.field private final mPrivateDnsValidationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleValidity:I

.field private mSuccessThreshold:I

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 118
    const-class v0, Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-direct {v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/connectivity/MockableSystemProperties;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "nms"    # Landroid/os/INetworkManagementService;
    .param p3, "sp"    # Lcom/android/server/connectivity/MockableSystemProperties;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    .line 300
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 301
    iput-object p2, p0, Lcom/android/server/connectivity/DnsManager;->mNMS:Landroid/os/INetworkManagementService;

    .line 302
    iput-object p3, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    .line 308
    return-void
.end method

.method private flushVmDnsCache()V
    .registers 6

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 439
    .local v1, "ident":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_21

    .line 441
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "domains"    # Ljava/lang/String;

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_10

    :cond_a
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method private getIntSetting(Ljava/lang/String;I)I
    .registers 4
    .param p1, "which"    # Ljava/lang/String;
    .param p2, "dflt"    # I

    .line 476
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPrivateDnsConfig(Landroid/content/ContentResolver;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 165
    invoke-static {p0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 169
    .local v1, "useTls":Z
    :goto_16
    const-string v2, "hostname"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 170
    const-string/jumbo v2, "private_dns_specifier"

    invoke-static {p0, v2}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "specifier":Ljava/lang/String;
    new-instance v3, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v3

    .line 174
    .end local v2    # "specifier":Ljava/lang/String;
    :cond_2c
    new-instance v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-direct {v2, v1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Z)V

    return-object v2
.end method

.method private static getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 490
    const-string/jumbo v0, "private_dns_mode"

    invoke-static {p0, v0}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "private_dns_default_mode"

    invoke-static {p0, v1}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v0, "off"

    .line 493
    :cond_1d
    return-object v0
.end method

.method public static getPrivateDnsSettingsUris()[Landroid/net/Uri;
    .registers 3

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "private_dns_default_mode"

    .line 188
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "private_dns_mode"

    .line 189
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "private_dns_specifier"

    .line 190
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 187
    return-object v0
.end method

.method private static getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "which"    # Ljava/lang/String;

    .line 497
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDnsConfigurationForNetwork$0(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .registers 3
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "ip"    # Ljava/net/InetAddress;

    .line 380
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method private setNetDnsProperty(ILjava/lang/String;)V
    .registers 7
    .param p1, "which"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "net.dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "key":Ljava/lang/String;
    :try_start_12
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    .line 486
    goto :goto_20

    .line 484
    :catch_18
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string v3, "Error setting unsupported net.dns property: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public static tryBlockingResolveOf(Landroid/net/Network;Ljava/lang/String;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .registers 5
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "name"    # Ljava/lang/String;

    .line 179
    :try_start_0
    invoke-static {p0, p1}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 180
    .local v0, "ips":[Ljava/net/InetAddress;
    new-instance v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-direct {v1, p1, v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 181
    .end local v0    # "ips":[Ljava/net/InetAddress;
    :catch_a
    move-exception v0

    .line 182
    .local v0, "uhe":Ljava/net/UnknownHostException;
    new-instance v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v1
.end method

.method private updateParametersSettings()V
    .registers 6

    .line 446
    const-string v0, "dns_resolver_sample_validity_seconds"

    const/16 v1, 0x708

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 449
    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    const v2, 0xffff

    if-le v0, v2, :cond_37

    .line 450
    :cond_15
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sampleValidity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", using default="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 455
    :cond_37
    const-string v0, "dns_resolver_success_threshold_percent"

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 458
    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    if-ltz v0, :cond_4b

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_6d

    .line 459
    :cond_4b
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid successThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", using default="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 464
    :cond_6d
    const-string v0, "dns_resolver_min_samples"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 465
    const-string v0, "dns_resolver_max_samples"

    const/16 v2, 0x40

    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 466
    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    if-ltz v0, :cond_8f

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    if-gt v0, v3, :cond_8f

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    if-le v0, v2, :cond_ca

    .line 467
    :cond_8f
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample count (min, max)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), using default=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 471
    iput v2, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 473
    :cond_ca
    return-void
.end method


# virtual methods
.method public getPrivateDnsConfig()Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig(Landroid/content/ContentResolver;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    move-result-object v0

    return-object v0
.end method

.method public removeNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 315
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 417
    .local v0, "last":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 418
    .local v2, "dns":Ljava/net/InetAddress;
    add-int/lit8 v0, v0, 0x1

    .line 419
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 420
    .end local v2    # "dns":Ljava/net/InetAddress;
    goto :goto_5

    .line 421
    :cond_1b
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_1d
    iget v2, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    if-gt v1, v2, :cond_29

    .line 422
    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 424
    .end local v1    # "i":I
    :cond_29
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    .line 425
    return-void
.end method

.method public setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V
    .registers 22
    .param p1, "netId"    # I
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "isDefaultNetwork"    # Z

    move-object/from16 v1, p0

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "assignedServers":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/DnsManager;->getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 361
    .local v10, "domainStrs":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/DnsManager;->updateParametersSettings()V

    .line 362
    const/4 v0, 0x4

    new-array v2, v0, [I

    iget v3, v1, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v1, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    const/4 v5, 0x1

    aput v3, v2, v5

    iget v3, v1, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    const/4 v6, 0x2

    aput v3, v2, v6

    iget v3, v1, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    const/4 v7, 0x3

    aput v3, v2, v7

    move-object v11, v2

    .line 371
    .local v11, "params":[I
    iget-object v2, v1, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v8, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 374
    .local v12, "privateDnsCfg":Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    iget-boolean v13, v12, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    .line 375
    .local v13, "useTls":Z
    invoke-virtual {v12}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->inStrictMode()Z

    move-result v14

    .line 376
    .local v14, "strictMode":Z
    if-eqz v14, :cond_47

    iget-object v2, v12, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    goto :goto_49

    :cond_47
    const-string v2, ""

    :goto_49
    move-object v15, v2

    .line 378
    .local v15, "tlsHostname":Ljava/lang/String;
    if-eqz v14, :cond_6c

    iget-object v2, v12, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 379
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;

    move-object/from16 v8, p2

    invoke-direct {v3, v8}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;-><init>(Landroid/net/LinkProperties;)V

    .line 380
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 381
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 378
    invoke-static {v2}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_74

    .line 382
    :cond_6c
    move-object/from16 v8, p2

    if-eqz v13, :cond_72

    .line 383
    move-object v2, v9

    goto :goto_74

    :cond_72
    new-array v2, v4, [Ljava/lang/String;

    :goto_74
    move-object v3, v2

    .line 387
    .local v3, "tlsServers":[Ljava/lang/String;
    if-eqz v13, :cond_a2

    .line 388
    iget-object v2, v1, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 389
    iget-object v0, v1, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    const/4 v6, 0x0

    invoke-direct {v7, v6}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>(Lcom/android/server/connectivity/DnsManager$1;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_92
    iget-object v0, v1, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    # invokes: Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateTrackedDnses([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v15}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    .line 393
    :cond_a2
    iget-object v0, v1, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :goto_ab
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDnsConfigurationForNetwork(%d, %s, %s, %s, %s, %s)"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 397
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v6, v5

    .line 398
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v6, v5

    const/4 v4, 0x4

    aput-object v15, v6, v4

    const/4 v4, 0x5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    .line 396
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_de
    iget-object v2, v1, Lcom/android/server/connectivity/DnsManager;->mNMS:Landroid/os/INetworkManagementService;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e0} :catch_fd

    move-object/from16 v16, v3

    move/from16 v3, p1

    .line 400
    .end local v3    # "tlsServers":[Ljava/lang/String;
    .local v16, "tlsServers":[Ljava/lang/String;
    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v15

    move-object/from16 v8, v16

    :try_start_ea
    invoke-interface/range {v2 .. v8}, Landroid/os/INetworkManagementService;->setDnsConfigurationForNetwork(I[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_fb

    .line 405
    nop

    .line 411
    if-eqz p3, :cond_f7

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 412
    :cond_f7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/DnsManager;->flushVmDnsCache()V

    .line 413
    return-void

    .line 402
    :catch_fb
    move-exception v0

    goto :goto_100

    .line 402
    .end local v16    # "tlsServers":[Ljava/lang/String;
    .restart local v3    # "tlsServers":[Ljava/lang/String;
    :catch_fd
    move-exception v0

    move-object/from16 v16, v3

    .line 403
    .end local v3    # "tlsServers":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "tlsServers":[Ljava/lang/String;
    :goto_100
    sget-object v3, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting DNS configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method public updatePrivateDns(Landroid/net/Network;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "cfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 320
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePrivateDns("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p2, :cond_35

    .line 322
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    goto :goto_43

    .line 323
    :cond_35
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 321
    :goto_43
    return-object v0
.end method

.method public updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 329
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 332
    .local v0, "privateDnsCfg":Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    iget-boolean v1, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    .line 334
    .local v1, "useTls":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_20

    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    goto :goto_21

    :cond_20
    move-object v3, v2

    .line 335
    .local v3, "statuses":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    :goto_21
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2d

    # invokes: Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->hasValidatedServer()Z
    invoke-static {v3}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$000(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;)Z

    move-result v6

    if-eqz v6, :cond_2d

    move v6, v5

    goto :goto_2e

    :cond_2d
    move v6, v4

    .line 336
    .local v6, "validated":Z
    :goto_2e
    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->inStrictMode()Z

    move-result v7

    .line 337
    .local v7, "strictMode":Z
    if-eqz v7, :cond_37

    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    nop

    .line 338
    .local v2, "tlsHostname":Ljava/lang/String;
    :cond_37
    if-nez v7, :cond_3d

    if-eqz v6, :cond_3c

    goto :goto_3d

    :cond_3c
    goto :goto_3e

    :cond_3d
    :goto_3d
    move v4, v5

    .line 340
    .local v4, "usingPrivateDns":Z
    :goto_3e
    invoke-virtual {p2, v4}, Landroid/net/LinkProperties;->setUsePrivateDns(Z)V

    .line 341
    invoke-virtual {p2, v2}, Landroid/net/LinkProperties;->setPrivateDnsServerName(Ljava/lang/String;)V

    .line 342
    if-eqz v4, :cond_4c

    if-eqz v3, :cond_4c

    .line 343
    # invokes: Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->fillInValidatedPrivateDns(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    invoke-static {v3, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    goto :goto_51

    .line 345
    :cond_4c
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, v5}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    .line 347
    :goto_51
    return-void
.end method

.method public updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 4
    .param p1, "update"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 350
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    .line 352
    .local v0, "statuses":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    if-nez v0, :cond_11

    return-void

    .line 353
    :cond_11
    # invokes: Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateStatus(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 354
    return-void
.end method
