.class Lcom/miui/server/SecurityManagerService$1;
.super Ljava/lang/Thread;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$onlyCore:Z


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;

    .line 662
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-boolean p2, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 665
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 666
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_117

    iget-boolean v0, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    if-nez v0, :cond_117

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 668
    .local v0, "begin":J
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 669
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 671
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_1c
    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_24} :catch_10b

    move-object v3, v4

    .line 675
    nop

    .line 676
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 678
    .local v4, "platformSignature":[Landroid/content/pm/Signature;
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z
    invoke-static {v5}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 680
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V
    invoke-static {v5, v4}, Lcom/miui/server/SecurityManagerService;->access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V

    .line 683
    :cond_35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v5, "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "com.lbe.security.miui"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    const-string v6, "com.android.updater"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    const-string v6, "com.miui.securitycenter"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    const-string v6, "com.xiaomi.finddevice"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    const-string v6, "com.miui.home"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    const-string v6, "com.miui.guardprovider"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    const-string v6, "com.miui.gallery"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v6, :cond_78

    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v6, :cond_78

    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v6, :cond_78

    .line 693
    const-string v6, "com.miui.player"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    const-string v6, "com.android.browser"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    const-string v6, "com.xiaomi.market"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_78
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 699
    .local v7, "pkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    invoke-static {v8, v2, v7}, Lcom/miui/server/SecurityManagerService;->access$1600(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 700
    .end local v7    # "pkg":Ljava/lang/String;
    goto :goto_7c

    .line 703
    :cond_8e
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v7, "com.android.updater"

    const/4 v8, 0x1

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v6, v4, v7, v8}, Lcom/miui/server/SecurityManagerService;->access$1700(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 706
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v7, "com.miui.securitycenter"

    const/4 v9, 0x0

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v6, v4, v7, v9}, Lcom/miui/server/SecurityManagerService;->access$1700(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 709
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v7, "com.xiaomi.finddevice"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v6, v4, v7, v8}, Lcom/miui/server/SecurityManagerService;->access$1700(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 711
    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v6, :cond_b8

    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v6, :cond_b8

    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v6, :cond_b8

    .line 714
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v7, "com.xiaomi.market"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v6, v4, v7, v9}, Lcom/miui/server/SecurityManagerService;->access$1700(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 717
    :cond_b8
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->isOldmanMode()Z
    invoke-static {v6}, Lcom/miui/server/SecurityManagerService;->access$1800(Lcom/miui/server/SecurityManagerService;)Z

    move-result v6

    .line 718
    .local v6, "oldmanMode":Z
    iget-object v7, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z
    invoke-static {v7}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;)Z

    move-result v7

    if-eqz v7, :cond_f0

    if-nez v6, :cond_f0

    .line 719
    const-string v7, "SecurityManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "nativeIsReleased set and "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v7, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iget-object v10, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z
    invoke-static {v10}, Lcom/miui/server/SecurityManagerService;->access$2000(Lcom/miui/server/SecurityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_ea

    goto :goto_ec

    .line 721
    :cond_ea
    nop

    .line 720
    move v8, v9

    :goto_ec
    # setter for: Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I
    invoke-static {v7, v8}, Lcom/miui/server/SecurityManagerService;->access$1902(Lcom/miui/server/SecurityManagerService;I)I

    goto :goto_107

    .line 723
    :cond_f0
    const-string v7, "SecurityManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "nativeIsReleased not set or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 726
    .end local v0    # "begin":J
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "platformSignature":[Landroid/content/pm/Signature;
    .end local v5    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "oldmanMode":Z
    goto :goto_117

    .line 672
    .restart local v0    # "begin":J
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_10b
    move-exception v4

    .line 673
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 674
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "System error: cannot find android package."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 731
    .end local v0    # "begin":J
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_117
    :goto_117
    return-void
.end method
