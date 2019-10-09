.class final Lcom/android/server/notification/NotificationManagerService$ToastRecord;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToastRecord"
.end annotation


# instance fields
.field callback:Landroid/app/ITransientNotification;

.field duration:I

.field final pid:I

.field final pkg:Ljava/lang/String;

.field token:Landroid/os/Binder;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/app/ITransientNotification;ILandroid/os/Binder;)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/ITransientNotification;
    .param p4, "duration"    # I
    .param p5, "token"    # Landroid/os/Binder;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    .line 644
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 645
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    .line 646
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    .line 647
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    .line 648
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 659
    if-eqz p3, :cond_b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 660
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    return-object v0
.end method

.method update(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 651
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    .line 652
    return-void
.end method

.method update(Landroid/app/ITransientNotification;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/ITransientNotification;

    .line 655
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    .line 656
    return-void
.end method
