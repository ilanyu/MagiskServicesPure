.class Lcom/android/server/am/ActivityManagerServiceInjector$6;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->onForegroundActivityChangedLocked(Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$multiWindowAppInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$pid:I

.field final synthetic val$r:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$state:Lcom/android/server/am/ActivityStack$ActivityState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 1482
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$r:Lcom/android/server/am/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput p3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$pid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$multiWindowAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1485
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$r:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$pid:I

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$multiWindowAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->onForegroundActivityChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    .line 1486
    return-void
.end method
