.class final Lcom/android/server/usb/UsbPortManager$DeathRecipient;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeathRecipient"
.end annotation


# instance fields
.field public pw:Lcom/android/internal/util/IndentingPrintWriter;

.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usb/UsbPortManager;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 501
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$DeathRecipient;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$DeathRecipient;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 503
    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 7
    .param p1, "cookie"    # J

    .line 507
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-nez v0, :cond_2f

    .line 508
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$DeathRecipient;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usb hal service died cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$DeathRecipient;->this$0:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$300(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 510
    :try_start_24
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$DeathRecipient;->this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbPortManager;->access$402(Lcom/android/server/usb/UsbPortManager;Landroid/hardware/usb/V1_0/IUsb;)Landroid/hardware/usb/V1_0/IUsb;

    .line 511
    monitor-exit v0

    goto :goto_2f

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    throw v1

    .line 513
    :cond_2f
    :goto_2f
    return-void
.end method
