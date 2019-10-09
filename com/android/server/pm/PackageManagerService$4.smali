.class Lcom/android/server/pm/PackageManagerService$4;
.super Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$async:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 5576
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$4;->val$async:Z

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionChanged()V
    .registers 2

    .line 5579
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$4;->val$async:Z

    if-nez v0, :cond_c

    .line 5580
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    goto :goto_11

    .line 5582
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 5584
    :goto_11
    return-void
.end method
