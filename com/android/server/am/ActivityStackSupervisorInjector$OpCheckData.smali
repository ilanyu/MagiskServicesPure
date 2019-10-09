.class public Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
.super Ljava/lang/Object;
.source "ActivityStackSupervisorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpCheckData"
.end annotation


# instance fields
.field newAInfo:Landroid/content/pm/ActivityInfo;

.field newIntent:Landroid/content/Intent;

.field newRInfo:Landroid/content/pm/ResolveInfo;

.field orginalintent:Landroid/content/Intent;

.field resolvedType:Ljava/lang/String;

.field resultRecord:Lcom/android/server/am/ActivityRecord;

.field service:Lcom/android/server/am/ActivityManagerService;

.field stackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field startFlags:I

.field userId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
