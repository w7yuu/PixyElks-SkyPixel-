.class Ldji/pilot/fpv/activity/FpvFlycDialog$6$9;
.super Ljava/lang/Object;
.source "FpvFlycDialog.java"

# interfaces
.implements Ldji/midware/interfaces/DJIDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldji/pilot/fpv/activity/FpvFlycDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldji/pilot/fpv/activity/FpvFlycDialog$6;


# direct methods
.method constructor <init>(Ldji/pilot/fpv/activity/FpvFlycDialog$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldji/pilot/fpv/activity/FpvFlycDialog$6$9;->this$1:Ldji/pilot/fpv/activity/FpvFlycDialog$6;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ldji/midware/data/config/P3/Ccode;)V
    .locals 0
    .param p1, "ccode"    # Ldji/midware/data/config/P3/Ccode;

    .prologue
    .line 565
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 560
    return-void
.end method
