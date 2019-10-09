.class Lcom/android/server/pm/PackageManagerServiceInjector$1;
.super Landroid/database/ContentObserver;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;->registerDataObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Handler;

    .line 547
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/pm/PackageManagerServiceInjector;->updatePackageWhiteList(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->access$000(Landroid/content/Context;)V

    .line 551
    return-void
.end method
