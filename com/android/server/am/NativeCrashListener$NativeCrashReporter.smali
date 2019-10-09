.class Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/NativeCrashListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCrashReporter"
.end annotation


# instance fields
.field mApp:Lcom/android/server/am/ProcessRecord;

.field mCrashReport:Ljava/lang/String;

.field mSignal:I

.field final synthetic this$0:Lcom/android/server/am/NativeCrashListener;


# direct methods
.method constructor <init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/NativeCrashListener;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "signal"    # I
    .param p4, "report"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    .line 67
    const-string v0, "NativeCrashReport"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 69
    iput p3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    .line 70
    iput-object p4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 76
    :try_start_0
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 77
    .local v0, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    const-string v1, "Native crash"

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 78
    iget v1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    invoke-static {v1}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "unknown"

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "unknown"

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "unknown"

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    iget-object v1, v1, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "native_crash"

    iget-object v3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/am/ActivityManagerService;->handleApplicationCrashInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 89
    .end local v0    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    goto :goto_3d

    .line 87
    :catch_35
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NativeCrashListener"

    const-string v2, "Unable to report native crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method
