.class Landroid/net/ip/IpClient$MessageHandlingLogger;
.super Ljava/lang/Object;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandlingLogger"
.end annotation


# instance fields
.field public processedInState:Ljava/lang/String;

.field public receivedInState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpClient$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/ip/IpClient$1;

    .line 1837
    invoke-direct {p0}, Landroid/net/ip/IpClient$MessageHandlingLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V
    .registers 4
    .param p1, "processedIn"    # Lcom/android/internal/util/State;
    .param p2, "receivedIn"    # Lcom/android/internal/util/IState;

    .line 1847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    .line 1848
    invoke-interface {p2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    .line 1849
    return-void
.end method

.method public reset()V
    .registers 2

    .line 1842
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpClient$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    .line 1843
    iput-object v0, p0, Landroid/net/ip/IpClient$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    .line 1844
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1852
    const-string/jumbo v0, "rcvd_in=%s, proc_in=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/ip/IpClient$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/ip/IpClient$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
