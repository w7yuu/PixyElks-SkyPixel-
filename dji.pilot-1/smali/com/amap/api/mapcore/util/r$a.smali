.class public Lcom/amap/api/mapcore/util/r$a;
.super Lcom/amap/api/mapcore/util/f;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/f",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/r;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/az$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/r;Lcom/amap/api/mapcore/az$a;)V
    .locals 1

    .prologue
    .line 238
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/f;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r$a;->e:Ljava/lang/ref/WeakReference;

    .line 240
    return-void
.end method

.method private e()Lcom/amap/api/mapcore/az$a;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/az$a;

    .line 364
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r;->b(Lcom/amap/api/mapcore/az$a;)Lcom/amap/api/mapcore/util/r$a;

    move-result-object v1

    .line 366
    if-ne p0, v1, :cond_0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x6f

    .line 247
    const-string v0, "ImageWorker"

    const-string v2, "doInBackground - starting work"

    invoke-static {v0, v2, v6}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 252
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/az$a;

    .line 253
    if-nez v0, :cond_0

    move-object v0, v1

    .line 326
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    iget v4, v0, Lcom/amap/api/mapcore/az$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget v4, v0, Lcom/amap/api/mapcore/az$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget v4, v0, Lcom/amap/api/mapcore/az$a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v4, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/mapcore/util/r;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 267
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    iget-boolean v5, v5, Lcom/amap/api/mapcore/util/r;->c:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r$a;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 269
    :try_start_1
    iget-object v5, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/mapcore/util/r;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 270
    :catch_0
    move-exception v5

    goto :goto_1

    .line 273
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    iget-object v4, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/r;->b(Lcom/amap/api/mapcore/util/r;)Lcom/amap/api/mapcore/util/o;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r$a;->d()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/r$a;->e()Lcom/amap/api/mapcore/az$a;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/r;->c(Lcom/amap/api/mapcore/util/r;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r;->b(Lcom/amap/api/mapcore/util/r;)Lcom/amap/api/mapcore/util/o;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/o;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    :cond_2
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r$a;->d()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/r$a;->e()Lcom/amap/api/mapcore/az$a;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/r;->c(Lcom/amap/api/mapcore/util/r;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 296
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/r;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    :goto_2
    if-eqz v0, :cond_3

    .line 318
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r;->b(Lcom/amap/api/mapcore/util/r;)Lcom/amap/api/mapcore/util/o;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r;->b(Lcom/amap/api/mapcore/util/r;)Lcom/amap/api/mapcore/util/o;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/amap/api/mapcore/util/o;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 323
    :cond_3
    const-string v1, "ImageWorker"

    const-string v2, "doInBackground - finished work"

    invoke-static {v1, v2, v6}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 273
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/r$a;->a([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r;->c(Lcom/amap/api/mapcore/util/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    const/4 p1, 0x0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/r$a;->e()Lcom/amap/api/mapcore/az$a;

    move-result-object v0

    .line 341
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 342
    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute - setting bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/az$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/az$a;->a(Landroid/graphics/Bitmap;)V

    .line 347
    :cond_2
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/r$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/util/f;->b(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/mapcore/util/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/r$a;->a:Lcom/amap/api/mapcore/util/r;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/mapcore/util/r;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/r$a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
