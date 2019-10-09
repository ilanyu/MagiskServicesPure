.class public Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BcRadioSrv"


# instance fields
.field private final mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field private final mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field private final mLock:Ljava/lang/Object;

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$1;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    .line 48
    new-instance v0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 50
    new-instance v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 54
    iput-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/broadcastradio/BroadcastRadioService;
    .param p1, "x1"    # Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/List;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/List;

    .line 42
    invoke-static {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->getNextId(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-object v0
.end method

.method private static getNextId(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 69
    .local p0, "modules":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/-$$Lambda$BroadcastRadioService$h9uu6awtPxlZjabQhUCMBWQXSFM;->INSTANCE:Lcom/android/server/broadcastradio/-$$Lambda$BroadcastRadioService$h9uu6awtPxlZjabQhUCMBWQXSFM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    .line 70
    .local v0, "max":Ljava/util/OptionalInt;
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method public static synthetic lambda$h9uu6awtPxlZjabQhUCMBWQXSFM(Landroid/hardware/radio/RadioManager$ModuleProperties;)I
    .registers 1

    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 62
    const-string v0, "broadcastradio"

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    return-void
.end method
