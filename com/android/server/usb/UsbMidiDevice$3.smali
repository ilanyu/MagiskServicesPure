.class Lcom/android/server/usb/UsbMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field final synthetic val$portF:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "x0"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    iput-object p4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iput p5, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 266
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_41

    .line 270
    .local v0, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    nop

    .line 269
    nop

    .line 271
    if-nez v0, :cond_16

    .line 272
    nop

    .line 281
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    const-string v0, "UsbMidiDevice"

    const-string/jumbo v1, "output thread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 275
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iget-object v2, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 v3, 0x0

    iget v4, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_21

    .line 278
    goto :goto_3b

    .line 276
    :catch_21
    move-exception v1

    .line 277
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsbMidiDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write failed for port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3b
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 280
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    goto :goto_0

    .line 267
    :catch_41
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
