.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->resetUserChangesToRuntimePermissionsAndFlagsLPw(Lcom/android/server/pm/PackageSetting;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$appId:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 20035
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$appId:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 20038
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$16;->val$appId:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const-string/jumbo v3, "permissions revoked"

    # invokes: Lcom/android/server/pm/PackageManagerService;->killUid(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 20039
    return-void
.end method
