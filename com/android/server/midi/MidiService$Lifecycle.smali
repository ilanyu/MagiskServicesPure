.class public Lcom/android/server/midi/MidiService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMidiService:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 73
    new-instance v0, Lcom/android/server/midi/MidiService;

    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/midi/MidiService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    .line 74
    const-string/jumbo v0, "midi"

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/midi/MidiService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 75
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 79
    if-nez p1, :cond_7

    .line 80
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    # invokes: Lcom/android/server/midi/MidiService;->onUnlockUser()V
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$000(Lcom/android/server/midi/MidiService;)V

    .line 82
    :cond_7
    return-void
.end method
