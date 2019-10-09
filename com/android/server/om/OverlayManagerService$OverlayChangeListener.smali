.class final Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 693
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 693
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method public static synthetic lambda$onOverlaysChanged$0(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ILjava/lang/String;)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 699
    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    move/from16 v15, p1

    # invokes: Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V
    invoke-static {v0, v15, v1}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.OVERLAY_CHANGED"

    const-string/jumbo v4, "package"

    .line 702
    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v14, v0

    .line 703
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_3e

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v5, v14

    move-object/from16 v17, v14

    move v14, v0

    .end local v14    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    move/from16 v15, v16

    move/from16 v16, p1

    :try_start_38
    invoke-interface/range {v3 .. v16}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 715
    goto :goto_41

    .line 713
    :catch_3c
    move-exception v0

    goto :goto_41

    .line 713
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_3e
    move-exception v0

    move-object/from16 v17, v14

    .line 716
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    :goto_41
    return-void
.end method


# virtual methods
.method public onOverlaysChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 697
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    # invokes: Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)V

    .line 698
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;-><init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 717
    return-void
.end method
