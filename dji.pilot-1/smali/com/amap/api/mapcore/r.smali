.class Lcom/amap/api/mapcore/r;
.super Ljava/lang/Object;
.source "GLESUtility.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V
    .locals 6

    .prologue
    .line 164
    const/4 v1, 0x3

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/r;->c(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 166
    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II)V
    .locals 6

    .prologue
    .line 174
    const/4 v1, 0x4

    const/high16 v4, 0x3f800000

    move-object v0, p0

    move v2, p1

    move-object v3, p5

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/r;->c(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 179
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/r;->c(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 181
    return-void
.end method

.method public static b(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V
    .locals 6

    .prologue
    .line 188
    const/4 v1, 0x6

    const/high16 v4, 0x3f800000

    move-object v0, p0

    move v2, p1

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/r;->c(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 193
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/r;->c(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V

    .line 195
    return-void
.end method

.method private static c(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;FI)V
    .locals 10

    .prologue
    const/16 v9, 0xb10

    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    const/high16 v4, 0x437f0000

    const/high16 v6, 0x3f800000

    .line 18
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 23
    invoke-interface {p0, v6, v6, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 24
    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 25
    const/16 v0, 0xb71

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 26
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 27
    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 30
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 44
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 45
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 46
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 47
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 50
    const v4, 0x809d

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 53
    invoke-interface {p0, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 54
    const/4 v4, 0x3

    const/16 v5, 0x1406

    invoke-interface {p0, v4, v5, v7, p3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 55
    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 56
    invoke-interface {p0, p1, v7, p5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 58
    const v4, 0x809d

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 60
    invoke-interface {p0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 61
    const/16 v4, 0xc51

    const/16 v5, 0x1102

    invoke-interface {p0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 63
    const/high16 v4, 0x41200000

    cmpl-float v4, p4, v4

    if-ltz v4, :cond_2

    .line 64
    const/high16 p4, 0x40c00000

    .line 70
    :cond_1
    :goto_1
    const/high16 v4, 0x40800000

    div-float/2addr v0, v4

    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 71
    invoke-interface {p0, p4}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 72
    const/4 v0, 0x1

    add-int/lit8 v1, p5, -0x2

    invoke-interface {p0, v7, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 73
    invoke-interface {p0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 76
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 77
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 78
    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 79
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    .line 65
    :cond_2
    const/high16 v4, 0x40a00000

    cmpl-float v4, p4, v4

    if-ltz v4, :cond_3

    .line 66
    sub-float/2addr p4, v8

    goto :goto_1

    .line 67
    :cond_3
    cmpl-float v4, p4, v8

    if-ltz v4, :cond_1

    .line 68
    sub-float/2addr p4, v6

    goto :goto_1
.end method