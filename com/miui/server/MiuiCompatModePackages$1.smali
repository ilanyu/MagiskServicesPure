.class Lcom/miui/server/MiuiCompatModePackages$1;
.super Landroid/database/ContentObserver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiCompatModePackages;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 201
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 204
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0}, Lcom/miui/server/MiuiCompatModePackages;->updateCloudDataAsync()V

    .line 205
    return-void
.end method
