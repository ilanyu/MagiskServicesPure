.class Lcom/miui/server/MiuiCompatModePackages$2;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 208
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 211
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$1100(Lcom/miui/server/MiuiCompatModePackages;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    # getter for: Lcom/miui/server/MiuiCompatModePackages;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;
    invoke-static {}, Lcom/miui/server/MiuiCompatModePackages;->access$900()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    .line 214
    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mCloudDataObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/miui/server/MiuiCompatModePackages;->access$1000(Lcom/miui/server/MiuiCompatModePackages;)Landroid/database/ContentObserver;

    move-result-object v2

    .line 211
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 217
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mCloudDataObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$1000(Lcom/miui/server/MiuiCompatModePackages;)Landroid/database/ContentObserver;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 218
    return-void
.end method
