;; Auto-generated. Do not edit!


(when (boundp 'qqy_msgs::Carry)
  (if (not (find-package "QQY_MSGS"))
    (make-package "QQY_MSGS"))
  (shadow 'Carry (find-package "QQY_MSGS")))
(unless (find-package "QQY_MSGS::CARRY")
  (make-package "QQY_MSGS::CARRY"))

(in-package "ROS")
;;//! \htmlinclude Carry.msg.html


(defclass qqy_msgs::Carry
  :super ros::object
  :slots (_grate _star _data ))

(defmethod qqy_msgs::Carry
  (:init
   (&key
    ((:grate __grate) "")
    ((:star __star) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _grate (string __grate))
   (setq _star (round __star))
   (setq _data (string __data))
   self)
  (:grate
   (&optional __grate)
   (if __grate (setq _grate __grate)) _grate)
  (:star
   (&optional __star)
   (if __star (setq _star __star)) _star)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _grate
    4 (length _grate)
    ;; int64 _star
    8
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _grate
       (write-long (length _grate) s) (princ _grate s)
     ;; int64 _star
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _star (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _star) (= (length (_star . bv)) 2)) ;; bignum
              (write-long (ash (elt (_star . bv) 0) 0) s)
              (write-long (ash (elt (_star . bv) 1) -1) s))
             ((and (class _star) (= (length (_star . bv)) 1)) ;; big1
              (write-long (elt (_star . bv) 0) s)
              (write-long (if (>= _star 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _star s)(write-long (if (>= _star 0) 0 #xffffffff) s)))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _grate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _star
#+(or :alpha :irix6 :x86_64)
      (setf _star (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _star (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get qqy_msgs::Carry :md5sum-) "d42e125daf9f6b149ddf8ecec0283ce3")
(setf (get qqy_msgs::Carry :datatype-) "qqy_msgs/Carry")
(setf (get qqy_msgs::Carry :definition-)
      "string grate
int64 star
string data
")



(provide :qqy_msgs/Carry "d42e125daf9f6b149ddf8ecec0283ce3")


