.class Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotification:Landroid/app/Notification;

.field private final mPackageName:Ljava/lang/String;

.field private final mTarget:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    .line 815
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    .line 816
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 817
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 818
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    .line 819
    if-eqz p4, :cond_21

    .line 820
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 821
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104045b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    # invokes: Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    invoke-static {v0, v1, p3, p5}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    goto :goto_24

    .line 825
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    .line 827
    :goto_24
    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 844
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_19

    .line 845
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 846
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 847
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 851
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 852
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const-string v1, "android.content.pm.extra.STATUS"

    .line 854
    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result v2

    .line 853
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 856
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const-string v1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_47
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3c .. :try_end_47} :catch_48

    .line 861
    goto :goto_49

    .line 860
    :catch_48
    move-exception v1

    .line 862
    :goto_49
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 831
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 832
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 837
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_22
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_22} :catch_23

    .line 839
    goto :goto_24

    .line 838
    :catch_23
    move-exception v1

    .line 840
    :goto_24
    return-void
.end method
