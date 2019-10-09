.class Lcom/android/server/policy/LegacyGlobalActions$8;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;

.field final synthetic val$user:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p2, "x0"    # I
    .param p3, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x2"    # Ljava/lang/CharSequence;

    .line 557
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$8;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iput-object p5, p0, Lcom/android/server/policy/LegacyGlobalActions$8;->val$user:Landroid/content/pm/UserInfo;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 5

    .line 561
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$8;->val$user:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 564
    goto :goto_23

    .line 562
    :catch_c
    move-exception v0

    .line 563
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LegacyGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t switch user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .line 569
    const/4 v0, 0x1

    return v0
.end method
