.class final Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntentReceiver"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mPw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 643
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 644
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    .line 645
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast completed: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "line":Ljava/lang/String;
    if-eqz p3, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    :cond_2c
    if-eqz p4, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_42
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 655
    monitor-enter p0

    .line 656
    const/4 v1, 0x1

    :try_start_4e
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 657
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 658
    monitor-exit p0

    .line 659
    return-void

    .line 658
    :catchall_55
    move-exception v1

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw v1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 3

    monitor-enter p0

    .line 663
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_e
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    goto :goto_1

    .line 666
    :cond_9
    nop

    .line 667
    monitor-exit p0

    return-void

    .line 662
    :catchall_c
    move-exception v0

    goto :goto_15

    .line 664
    :catch_e
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c

    .line 662
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_15
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    throw v0
.end method
