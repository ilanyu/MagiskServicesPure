.class Lcom/android/server/pm/PackageManagerService$21;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$BlobXmlRestorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->restorePermissionGrants([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 20871
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 20875
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 20876
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->processRestoredPermissionGrantsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$5300(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 20877
    monitor-exit v0

    .line 20878
    return-void

    .line 20877
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
