.class Lcom/miui/server/SecurityManagerService$MyPackageMonitor$1;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->checkDefaultBrowser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/SecurityManagerService$MyPackageMonitor;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService$MyPackageMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    .line 293
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor$1;->this$1:Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor$1;->this$1:Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 299
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_c
    const-string/jumbo v1, "miui.sec.defBrowser"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 300
    .local v1, "defBrowserCount":I
    const/4 v2, 0x1

    .line 301
    .local v2, "allow":Z
    const/16 v3, 0xa

    if-lt v1, v3, :cond_26

    const/16 v3, 0x64

    if-ge v1, v3, :cond_26

    .line 302
    const-string/jumbo v3, "miui.sec.defBrowser"

    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    const/4 v2, 0x0

    .line 305
    :cond_26
    if-eqz v2, :cond_2f

    .line 306
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor$1;->this$1:Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    iget-object v3, v3, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->setDefaultBrowser()V
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$100(Lcom/miui/server/SecurityManagerService;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_30

    .line 310
    .end local v1    # "defBrowserCount":I
    .end local v2    # "allow":Z
    :cond_2f
    goto :goto_38

    .line 308
    :catch_30
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerService"

    const-string v3, "checkDefaultBrowser"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    return-void
.end method
