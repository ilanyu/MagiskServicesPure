.class final Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;
.super Landroid/os/Handler;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CookiePersistence"
.end annotation


# static fields
.field private static final PERSIST_COOKIE_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private final mPendingPersistCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/PackageParser$Package;",
            "Lcom/android/internal/os/SomeArgs;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1172
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    .line 1173
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1169
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1174
    return-void
.end method

.method private addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "cookie"    # [B
    .param p4, "cookieFile"    # Ljava/io/File;

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1223
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1224
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    if-nez v0, :cond_15

    .line 1225
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1226
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1228
    :cond_15
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1229
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1230
    iput-object p4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1231
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    return-void
.end method

.method private removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;
    .registers 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1236
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1237
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1238
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    const/4 v1, 0x0

    .line 1239
    .local v1, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_1d

    .line 1240
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1241
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1242
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1245
    :cond_1d
    return-object v1
.end method


# virtual methods
.method public cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1212
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removeMessages(ILjava/lang/Object;)V

    .line 1213
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1214
    .local v0, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_c

    .line 1215
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1217
    :cond_c
    return-void
.end method

.method public getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B
    .registers 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1199
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1200
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1201
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    if-eqz v0, :cond_17

    .line 1202
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1203
    .local v1, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v1, :cond_17

    .line 1204
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2

    .line 1207
    .end local v1    # "state":Lcom/android/internal/os/SomeArgs;
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 1250
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1251
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1252
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1253
    .local v2, "state":Lcom/android/internal/os/SomeArgs;
    if-nez v2, :cond_d

    .line 1254
    return-void

    .line 1256
    :cond_d
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, [B

    .line 1257
    .local v3, "cookie":[B
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    .line 1258
    .local v4, "cookieFile":Ljava/io/File;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1259
    iget-object v5, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/InstantAppRegistry;->persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V
    invoke-static {v5, v3, v6, v4, v0}, Lcom/android/server/pm/InstantAppRegistry;->access$200(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V

    .line 1260
    return-void
.end method

.method public schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "cookie"    # [B

    .line 1182
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 1183
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    .line 1182
    # invokes: Lcom/android/server/pm/InstantAppRegistry;->computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    invoke-static {v0, v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1184
    .local v0, "newCookieFile":Ljava/io/File;
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1185
    const-string v1, "InstantAppRegistry"

    const-string v2, "Parsed Instant App contains no valid signatures!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_1d
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    invoke-static {v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$100(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 1188
    .local v1, "oldCookieFile":Ljava/io/File;
    if-eqz v1, :cond_2e

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1189
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1191
    :cond_2e
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 1192
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V

    .line 1193
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1195
    return-void
.end method
