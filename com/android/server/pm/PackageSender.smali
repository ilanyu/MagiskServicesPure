.class interface abstract Lcom/android/server/pm/PackageSender;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# virtual methods
.method public abstract notifyPackageAdded(Ljava/lang/String;)V
.end method

.method public abstract notifyPackageRemoved(Ljava/lang/String;)V
.end method

.method public abstract sendPackageAddedForNewUsers(Ljava/lang/String;ZZI[I[I)V
.end method

.method public abstract sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V
.end method
