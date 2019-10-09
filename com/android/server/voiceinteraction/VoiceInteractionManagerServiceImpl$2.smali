.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 102
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 105
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 106
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_18

    .line 108
    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->ready()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 110
    goto :goto_16

    .line 109
    :catch_15
    move-exception v1

    .line 111
    :goto_16
    :try_start_16
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 116
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 117
    return-void
.end method
