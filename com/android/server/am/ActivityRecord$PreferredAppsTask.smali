.class Lcom/android/server/am/ActivityRecord$PreferredAppsTask;
.super Landroid/os/AsyncTask;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferredAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    .line 848
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "x1"    # Lcom/android/server/am/ActivityRecord$1;

    .line 848
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;-><init>(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 848
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 20
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v0, p0

    .line 851
    const/4 v1, 0x0

    .line 852
    .local v1, "res":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    .line 853
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/util/BoostFramework;->perfUXEngine_trigger(I)Ljava/lang/String;

    move-result-object v1

    .line 854
    if-nez v1, :cond_16

    .line 855
    return-object v3

    .line 856
    :cond_16
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "p_apps":[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_4b

    .line 858
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 859
    .local v4, "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 860
    .local v5, "bParams":Landroid/os/Bundle;
    nop

    .line 862
    const-string/jumbo v6, "start_empty_apps"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 863
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserEmpty(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 867
    .end local v2    # "p_apps":[Ljava/lang/String;
    .end local v4    # "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "bParams":Landroid/os/Bundle;
    :cond_4b
    return-object v3
.end method
