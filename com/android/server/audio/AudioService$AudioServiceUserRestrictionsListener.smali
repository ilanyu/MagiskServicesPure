.class Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceUserRestrictionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 7007
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 7007
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 7014
    const-string/jumbo v0, "no_unmute_microphone"

    .line 7015
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 7016
    .local v0, "wasRestricted":Z
    const-string/jumbo v1, "no_unmute_microphone"

    .line 7017
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 7018
    .local v1, "isRestricted":Z
    if-eq v0, v1, :cond_15

    .line 7019
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V
    invoke-static {v2, v1, p1}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;ZI)V

    .line 7025
    .end local v0    # "wasRestricted":Z
    .end local v1    # "isRestricted":Z
    :cond_15
    const-string/jumbo v0, "no_adjust_volume"

    .line 7026
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    const-string v0, "disallow_unmute_device"

    .line 7027
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    move v0, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v0, v1

    .line 7028
    .restart local v0    # "wasRestricted":Z
    :goto_2c
    const-string/jumbo v3, "no_adjust_volume"

    .line 7029
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "disallow_unmute_device"

    .line 7030
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_40

    :cond_3e
    move v1, v2

    nop

    .line 7031
    .restart local v1    # "isRestricted":Z
    :cond_40
    :goto_40
    if-eq v0, v1, :cond_47

    .line 7032
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V
    invoke-static {v3, v1, v2, p1}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ZII)V

    .line 7035
    .end local v0    # "wasRestricted":Z
    .end local v1    # "isRestricted":Z
    :cond_47
    return-void
.end method
