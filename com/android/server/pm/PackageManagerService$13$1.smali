.class Lcom/android/server/pm/PackageManagerService$13$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$13;

.field final synthetic val$retCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$13;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$13;

    .line 18534
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13$1;->this$1:Lcom/android/server/pm/PackageManagerService$13;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$13$1;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 18536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13$1;->this$1:Lcom/android/server/pm/PackageManagerService$13;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$13$1;->val$retCode:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 18537
    return-void
.end method
