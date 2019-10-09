.class Lcom/android/server/pm/PackageManagerServiceInjector$5;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;->processFirstUseActivity(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 3

    .line 1990
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$5;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1993
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$5;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$5;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->handleFirstUseActivity(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1994
    return-void
.end method
