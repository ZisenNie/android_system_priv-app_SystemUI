.class final Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;
.super Landroid/os/Handler;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .prologue
    .line 5218
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 5224
    :goto_5
    return-void

    .line 5227
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Ljava/lang/Runnable;)V

    goto :goto_5

    .line 5230
    :pswitch_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    goto :goto_5

    .line 5233
    :pswitch_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->-wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V

    goto :goto_5

    .line 5225
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1c
    .end packed-switch
.end method
