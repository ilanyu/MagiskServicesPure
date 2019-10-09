.class Lcom/android/server/pm/PackageManagerService$1$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$1;->onGidsChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$1;

.field final synthetic val$appId:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$1;II)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 1934
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1$1;->this$1:Lcom/android/server/pm/PackageManagerService$1;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$appId:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1937
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1$1;->this$1:Lcom/android/server/pm/PackageManagerService$1;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$appId:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$userId:I

    const-string/jumbo v3, "permission grant or revoke changed gids"

    # invokes: Lcom/android/server/pm/PackageManagerService;->killUid(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 1938
    return-void
.end method
