.class Lcom/android/server/usb/MtpNotificationManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/MtpNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/MtpNotificationManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/MtpNotificationManager;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager$Receiver;->this$0:Lcom/android/server/usb/MtpNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/usb/MtpNotificationManager;
    .param p2, "x1"    # Lcom/android/server/usb/MtpNotificationManager$1;

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 117
    nop

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 119
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_10

    .line 120
    return-void

    .line 122
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x2dcc4317

    if-eq v3, v4, :cond_1f

    goto :goto_28

    :cond_1f
    const-string v3, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v2, 0x0

    :cond_28
    :goto_28
    if-eqz v2, :cond_2b

    goto :goto_34

    .line 124
    :cond_2b
    iget-object v1, p0, Lcom/android/server/usb/MtpNotificationManager$Receiver;->this$0:Lcom/android/server/usb/MtpNotificationManager;

    # getter for: Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;
    invoke-static {v1}, Lcom/android/server/usb/MtpNotificationManager;->access$100(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;->onOpenInApp(Landroid/hardware/usb/UsbDevice;)V

    .line 127
    :goto_34
    return-void
.end method
