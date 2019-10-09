.class public Lcom/android/server/am/MiuiErrorReport;
.super Ljava/lang/Object;
.source "MiuiErrorReport.java"


# static fields
.field private static final DUMP_KLO_BUGREPORT:Ljava/lang/String; = "miui.intent.action.DUMP_KLO_BUGREPORT"

.field private static final EXTRA_FC_PREVIEW:Ljava/lang/String; = "extra_fc_report"

.field private static final FC_PREVIEW:Ljava/lang/String; = "miui.intent.action.FC_PREVIEW"

.field private static final TAG:Ljava/lang/String; = "MiuiErrorReport"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAnrErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "mandatory"    # Z

    .line 33
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/ErrorReport;->sendAnrReport(Landroid/content/Context;Landroid/app/ActivityManager$ProcessErrorStateInfo;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 35
    goto :goto_8

    .line 34
    :catch_7
    move-exception v0

    .line 36
    :goto_8
    return-void
.end method

.method public static sendFcErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 25
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p2, v1}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 28
    goto :goto_a

    .line 27
    :catch_9
    move-exception v0

    .line 29
    :goto_a
    return-void
.end method

.method public static startFcPreviewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "miui.intent.action.FC_PREVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "extra_fc_report"

    .line 49
    invoke-static {p0, p1, p2}, Lmiui/util/ErrorReport;->getExceptionData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 52
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 54
    :cond_2c
    return-void
.end method

.method public static startKloReportService(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "miui.intent.action.DUMP_KLO_BUGREPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
