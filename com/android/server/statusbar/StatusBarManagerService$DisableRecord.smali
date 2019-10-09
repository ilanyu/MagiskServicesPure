.class Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableRecord"
.end annotation


# instance fields
.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field token:Landroid/os/IBinder;

.field userId:I

.field what1:I

.field what2:I


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;)V
    .registers 4
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 103
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 105
    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 107
    const/4 p1, 0x0

    :try_start_a
    invoke-interface {p3, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 110
    goto :goto_f

    .line 108
    :catch_e
    move-exception p1

    .line 111
    :goto_f
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 115
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 119
    return-void
.end method

.method public getFlags(I)I
    .registers 5
    .param p1, "which"    # I

    .line 143
    packed-switch p1, :pswitch_data_22

    .line 147
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get unsupported disable flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    return v0

    .line 145
    :pswitch_1b
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    return v0

    .line 144
    :pswitch_1e
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public isEmpty()Z
    .registers 2

    .line 153
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setFlags(IILjava/lang/String;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "which"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 122
    packed-switch p2, :pswitch_data_30

    .line 134
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set unsupported disable flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 129
    :pswitch_26
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    .line 132
    goto :goto_2c

    .line 124
    :pswitch_29
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 127
    nop

    .line 139
    :goto_2c
    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 140
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 158
    const-string/jumbo v0, "userId=%d what1=0x%08X what2=0x%08X pkg=%s token=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 158
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
