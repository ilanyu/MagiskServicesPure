.class Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/globalactions/ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 8

    .line 635
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 636
    const v1, 0x108030b

    const v2, 0x108030a

    const v3, 0x1040287

    const v4, 0x1040285

    const v5, 0x1040284

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/globalactions/ToggleAction;-><init>(IIIII)V

    .line 641
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 4
    .param p1, "on"    # Z

    .line 645
    if-eqz p1, :cond_d

    .line 646
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    # getter for: Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_17

    .line 648
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    # getter for: Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 650
    :goto_17
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .line 654
    const/4 v0, 0x1

    return v0
.end method
