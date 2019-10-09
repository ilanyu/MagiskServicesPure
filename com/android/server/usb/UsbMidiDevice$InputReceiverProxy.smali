.class final Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputReceiverProxy"
.end annotation


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "x1"    # Lcom/android/server/usb/UsbMidiDevice$1;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    return-void
.end method


# virtual methods
.method public onFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 136
    .local v0, "receiver":Landroid/media/midi/MidiReceiver;
    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {v0}, Landroid/media/midi/MidiReceiver;->flush()V

    .line 139
    :cond_7
    return-void
.end method

.method public onSend([BIIJ)V
    .registers 13
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 124
    .local v6, "receiver":Landroid/media/midi/MidiReceiver;
    if-eqz v6, :cond_c

    .line 125
    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 127
    :cond_c
    return-void
.end method

.method public setReceiver(Landroid/media/midi/MidiReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 130
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 131
    return-void
.end method
