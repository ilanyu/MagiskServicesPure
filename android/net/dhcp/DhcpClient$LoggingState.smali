.class abstract Landroid/net/dhcp/DhcpClient$LoggingState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoggingState"
.end annotation


# instance fields
.field private mEnterTimeMs:J

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 532
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private messageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "what"    # I

    .line 548
    # getter for: Landroid/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;
    invoke-static {}, Landroid/net/dhcp/DhcpClient;->access$400()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 553
    .local v0, "now":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .local v2, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 555
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Landroid/net/dhcp/DhcpClient$LoggingState;->messageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 556
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 557
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->mEnterTimeMs:J

    .line 539
    return-void
.end method

.method public exit()V
    .registers 6

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->mEnterTimeMs:J

    sub-long/2addr v0, v2

    .line 544
    .local v0, "durationMs":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->getName()Ljava/lang/String;

    move-result-object v3

    long-to-int v4, v0

    # invokes: Landroid/net/dhcp/DhcpClient;->logState(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Landroid/net/dhcp/DhcpClient;->access$300(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V

    .line 545
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 574
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .line 567
    const/4 v0, 0x0

    return v0
.end method
