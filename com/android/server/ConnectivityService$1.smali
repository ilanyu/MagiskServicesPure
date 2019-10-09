.class Lcom/android/server/ConnectivityService$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 731
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 745
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 746
    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 734
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const-string v1, "--diag"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2, v1, p4}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 735
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const-string v1, "--short"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2, v1, p4}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 736
    return-void
.end method

.method public dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 740
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 741
    return-void
.end method
