.class Ldji/pilot/usercenter/activity/DJIVideoShareActivity$4;
.super Ljava/lang/Object;
.source "DJIVideoShareActivity.java"

# interfaces
.implements Ldji/pilot/usercenter/listener/OnTokenGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldji/pilot/usercenter/activity/DJIVideoShareActivity;->doFBUpload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldji/pilot/usercenter/activity/DJIVideoShareActivity;


# direct methods
.method constructor <init>(Ldji/pilot/usercenter/activity/DJIVideoShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldji/pilot/usercenter/activity/DJIVideoShareActivity$4;->this$0:Ldji/pilot/usercenter/activity/DJIVideoShareActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenGet(Ljava/lang/String;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Ldji/pilot/usercenter/activity/DJIVideoShareActivity$4;->this$0:Ldji/pilot/usercenter/activity/DJIVideoShareActivity;

    # invokes: Ldji/pilot/usercenter/activity/DJIVideoShareActivity;->upLoadFB()V
    invoke-static {v0}, Ldji/pilot/usercenter/activity/DJIVideoShareActivity;->access$4(Ldji/pilot/usercenter/activity/DJIVideoShareActivity;)V

    .line 163
    return-void
.end method
