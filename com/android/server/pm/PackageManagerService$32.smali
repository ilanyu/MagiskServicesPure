.class Lcom/android/server/pm/PackageManagerService$32;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageIfUnusedLPr(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 24128
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$32;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 24130
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$32;->val$packageName:Ljava/lang/String;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    .line 24132
    return-void
.end method
