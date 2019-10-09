.class Lcom/android/server/autofill/FieldClassificationStrategy$1;
.super Ljava/lang/Object;
.source "FieldClassificationStrategy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/FieldClassificationStrategy;->connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/FieldClassificationStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 161
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 196
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1b

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindingDied(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1b
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$000(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 198
    :try_start_22
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    invoke-static {v1, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$102(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 204
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1b

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNullBinding(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1b
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$000(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 206
    :try_start_22
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    invoke-static {v1, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$102(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 164
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1b

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1b
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$000(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_22
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 167
    invoke-static {p2}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutofillFieldClassificationService;

    move-result-object v2

    .line 166
    # setter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    invoke-static {v1, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$102(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 168
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$200(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 169
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$200(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 170
    .local v1, "size":I
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_5d

    const-string v2, "FieldClassificationStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " queued commands"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_5d
    const/4 v2, 0x0

    .line 171
    .local v2, "i":I
    :goto_5e
    if-ge v2, v1, :cond_b3

    .line 172
    iget-object v3, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$200(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    :try_end_6c
    .catchall {:try_start_22 .. :try_end_6c} :catchall_c8

    .line 174
    .local v3, "queuedCommand":Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    :try_start_6c
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_87

    const-string v4, "FieldClassificationStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "running queued command #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_87
    iget-object v4, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    invoke-static {v4}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$100(Lcom/android/server/autofill/FieldClassificationStrategy;)Landroid/service/autofill/IAutofillFieldClassificationService;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/autofill/FieldClassificationStrategy$Command;->run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_90} :catch_91
    .catchall {:try_start_6c .. :try_end_90} :catchall_c8

    .line 178
    goto :goto_b0

    .line 176
    :catch_91
    move-exception v4

    .line 177
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_92
    const-string v5, "FieldClassificationStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v3    # "queuedCommand":Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 180
    .end local v2    # "i":I
    :cond_b3
    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$202(Lcom/android/server/autofill/FieldClassificationStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 181
    .end local v1    # "size":I
    goto :goto_c6

    :cond_ba
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_c6

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "no queued commands"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_c6
    :goto_c6
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_c8
    move-exception v1

    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_92 .. :try_end_ca} :catchall_c8

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 188
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1b

    const-string v0, "FieldClassificationStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1b
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    # getter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$000(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 190
    :try_start_22
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    invoke-static {v1, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;->access$102(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v1
.end method
