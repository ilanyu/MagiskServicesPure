.class Lcom/miui/server/SecurityManagerService$2;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->resetDefaultBrowser(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;

    .line 814
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$2;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-object p2, p0, Lcom/miui/server/SecurityManagerService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 819
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 821
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_12

    .line 822
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$2;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->setDefaultBrowser()V
    invoke-static {v1}, Lcom/miui/server/SecurityManagerService;->access$100(Lcom/miui/server/SecurityManagerService;)V

    .line 823
    return-void

    .line 825
    :cond_12
    const-string/jumbo v1, "miui.sec.defBrowser"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 826
    .local v1, "defBrowserCount":I
    if-eq v1, v2, :cond_1d

    .line 827
    return-void

    .line 829
    :cond_1d
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 830
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManagerCompat;->getDefaultBrowserPackageNameAsUser(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, "defaultBrowser":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    const-string v5, "com.android.browser"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 832
    const-string v5, ""

    invoke-static {v2, v5, v3}, Landroid/content/pm/PackageManagerCompat;->setDefaultBrowserPackageNameAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 833
    const-string/jumbo v3, "miui.sec.defBrowser"

    const/16 v5, 0xa

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4b

    .line 835
    :cond_44
    const-string/jumbo v3, "miui.sec.defBrowser"

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4b} :catch_4c

    .line 839
    .end local v1    # "defBrowserCount":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "defaultBrowser":Ljava/lang/String;
    :goto_4b
    goto :goto_50

    .line 837
    :catch_4c
    move-exception v1

    .line 838
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 840
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_50
    return-void
.end method
